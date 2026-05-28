#!/usr/bin/env python3
"""Regenerate a Homebrew formula from GitHub release info."""
import json
import re
import subprocess
import sys

FORMULA = sys.argv[1]  # e.g. "dj"
REPO = sys.argv[2]      # e.g. "ejfkdev/dj"

# Get latest release tag
result = subprocess.run(
    ["gh", "release", "view", "--repo", REPO, "--json", "tagName"],
    capture_output=True, text=True
)
if result.returncode != 0:
    print(f"ERROR: Failed to get release for {REPO}")
    sys.exit(1)
tag = json.loads(result.stdout)["tagName"]
version = tag.lstrip("v")

# Get current version from formula
with open(f"Formula/{FORMULA}.rb") as f:
    content = f.read()
current_version = re.search(r'^  version "(.+)"', content, re.MULTILINE).group(1)

if current_version == version:
    print(f"Already up to date: {version}")
    sys.exit(0)

print(f"Updating {FORMULA} from {current_version} to {version}")

# Get all assets with sha256 from GitHub API
result = subprocess.run(
    ["gh", "api", f"repos/{REPO}/releases/tags/{tag}", "--jq",
     ".assets[] | \"\\(.name) \\(.digest // \"none\")\""],
    capture_output=True, text=True
)
assets = {}
for line in result.stdout.strip().split("\n"):
    if not line.strip():
        continue
    parts = line.rsplit(" ", 1)
    name = parts[0]
    digest = parts[1].replace("sha256:", "") if len(parts) > 1 and parts[1] != "none" else ""
    assets[name] = digest

# For assets without digest, compute by downloading
for name in list(assets.keys()):
    if not assets[name]:
        print(f"  No digest for {name}, downloading to compute...")
        url = f"https://github.com/{REPO}/releases/download/{tag}/{name}"
        subprocess.run(["curl", "-sL", url, "-o", f"/tmp/{name}"], check=True)
        result = subprocess.run(
            ["shasum", "-a", "256", f"/tmp/{name}"],
            capture_output=True, text=True
        )
        assets[name] = result.stdout.split()[0]

# ---- Configuration per formula ----

PLATFORMS = ["macos_arm", "macos_intel", "linux_arm", "linux_intel"]

# Main binary asset patterns per platform per formula
PATTERNS = {
    "dj": {
        "macos_arm": "dj-darwin-arm64",
        "macos_intel": "dj-darwin-amd64",
        "linux_arm": "dj-linux-arm64",
        "linux_intel": "dj-linux-amd64",
    },
    "udf": {
        "macos_arm": "udf_{ver}_darwin_arm64.tar.gz",
        "macos_intel": "udf_{ver}_darwin_amd64.tar.gz",
        "linux_arm": "udf_{ver}_linux_arm64.tar.gz",
        "linux_intel": "udf_{ver}_linux_amd64.tar.gz",
    },
    "apix": {
        "macos_arm": "apix_{ver}_darwin_arm64.tar.gz",
        "macos_intel": "apix_{ver}_darwin_amd64.tar.gz",
        "linux_arm": "apix_{ver}_linux_arm64.tar.gz",
        "linux_intel": "apix_{ver}_linux_amd64.tar.gz",
    },
    "tspc": {
        "macos_arm": "tspc-aarch64-apple-darwin",
        "macos_intel": "tspc-x86_64-apple-darwin",
        "linux_arm": "tspc-aarch64-unknown-linux-gnu",
        "linux_intel": "tspc-x86_64-unknown-linux-gnu",
    },
    "vcc": {
        "macos_arm": "vcc-aarch64-macos",
        "macos_intel": "vcc-x86_64-macos",
        "linux_arm": "vcc-aarch64-linux-gnu",
        "linux_intel": "vcc-x86_64-linux-gnu",
    },
    "zaip": {
        "macos_arm": "zaip-client_macos_arm64",
        "macos_intel": "zaip-client_macos_amd64",
        "linux_arm": "zaip-client_linux_arm64",
        "linux_intel": "zaip-client_linux_amd64",
    },
    "saw": {
        "macos_arm": "saw-client-macos-arm64",
        "macos_intel": "saw-client-macos-x86_64",
        "linux_arm": "saw-client-linux-arm64",
        "linux_intel": "saw-client-linux-x86_64",
    },
}

# Extra resources for multi-binary formulas
RESOURCES = {
    "zaip": {
        "server": {
            "macos_arm": "zaip-server_macos_arm64",
            "macos_intel": "zaip-server_macos_amd64",
            "linux_arm": "zaip-server_linux_arm64",
            "linux_intel": "zaip-server_linux_amd64",
        },
    },
    "saw": {
        "server": {
            "macos_arm": "saw-server-macos-arm64",
            "macos_intel": "saw-server-macos-x86_64",
            "linux_arm": "saw-server-linux-arm64",
            "linux_intel": "saw-server-linux-x86_64",
        },
        "shell": {
            "macos_arm": "saw-shell-macos-arm64",
            "macos_intel": "saw-shell-macos-x86_64",
            "linux_arm": "saw-shell-linux-arm64",
            "linux_intel": "saw-shell-linux-x86_64",
        },
    },
}

# Install and test blocks per formula
INSTALL_TEST = {
    "dj": """
  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end""",
    "udf": """
  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end""",
    "apix": """
  def install
    bin.install "apix"
  end

  test do
    system "#{bin}/apix", "--help"
  end""",
    "tspc": """
  def install
    bin.install Dir["tspc-*"].first => "tspc"
  end

  test do
    system "#{bin}/tspc", "--help"
  end""",
    "vcc": """
  def install
    bin.install Dir["vcc-*"].first => "vcc"
  end

  test do
    system "#{bin}/vcc", "--help"
  end""",
    "zaip": """
  def install
    bin.install Dir["zaip-client_*"].first => "zaip-client"
    resource("server").stage { bin.install Dir["zaip-server_*"].first => "zaip-server" }
  end

  test do
    system "#{bin}/zaip-client", "--help"
    system "#{bin}/zaip-server", "--help"
  end""",
    "saw": """
  def install
    bin.install Dir["saw-client-*"].first => "saw-client"
    resource("server").stage { bin.install Dir["saw-server-*"].first => "saw-server" }
    resource("shell").stage { bin.install Dir["saw-shell-*"].first => "saw-shell" }
  end

  test do
    system "#{bin}/saw-client", "--help"
    system "#{bin}/saw-server", "--help"
    system "#{bin}/saw-shell", "--help"
  end""",
}

# ---- Generate formula ----

desc_match = re.search(r'^  desc "(.+)"', content, re.MULTILINE)
homepage_match = re.search(r'^  homepage "(.+)"', content, re.MULTILINE)
desc = desc_match.group(1) if desc_match else "CLI tool"
homepage = homepage_match.group(1) if homepage_match else f"https://github.com/{REPO}"

BASE_URL = f"https://github.com/{REPO}/releases/download/{tag}"
formula_patterns = PATTERNS[FORMULA]
formula_resources = RESOURCES.get(FORMULA, {})

lines = []
lines.append(f'class {FORMULA.capitalize()} < Formula')
lines.append(f'  desc "{desc}"')
lines.append(f'  homepage "{homepage}"')
lines.append(f'  version "{version}"')

# macOS block
lines.append("")
lines.append("  on_macos do")
for arch_key, arch_ruby in [("macos_arm", "arm"), ("macos_intel", "intel")]:
    lines.append(f"    on_{arch_ruby} do")
    asset = formula_patterns[arch_key].format(ver=version)
    sha = assets.get(asset, "MISSING")
    lines.append(f'      url "{BASE_URL}/{asset}"')
    lines.append(f'      sha256 "{sha}"')
    for rname, rpatterns in formula_resources.items():
        rass = rpatterns[arch_key].format(ver=version)
        rsha = assets.get(rass, "MISSING")
        lines.append("")
        lines.append(f'      resource "{rname}" do')
        lines.append(f'        url "{BASE_URL}/{rass}"')
        lines.append(f'        sha256 "{rsha}"')
        lines.append("      end")
    lines.append("    end")
lines.append("  end")

# Linux block
lines.append("")
lines.append("  on_linux do")
for arch_key, arch_ruby in [("linux_arm", "arm"), ("linux_intel", "intel")]:
    lines.append(f"    on_{arch_ruby} do")
    asset = formula_patterns[arch_key].format(ver=version)
    sha = assets.get(asset, "MISSING")
    lines.append(f'      url "{BASE_URL}/{asset}"')
    lines.append(f'      sha256 "{sha}"')
    for rname, rpatterns in formula_resources.items():
        rass = rpatterns[arch_key].format(ver=version)
        rsha = assets.get(rass, "MISSING")
        lines.append("")
        lines.append(f'      resource "{rname}" do')
        lines.append(f'        url "{BASE_URL}/{rass}"')
        lines.append(f'        sha256 "{rsha}"')
        lines.append("      end")
    lines.append("    end")
lines.append("  end")

# Install and test
lines.append(INSTALL_TEST[FORMULA])
lines.append("end")
lines.append("")

output = "\n".join(lines)

with open(f"Formula/{FORMULA}.rb", "w") as f:
    f.write(output)

print(f"Updated Formula/{FORMULA}.rb to v{version}")
