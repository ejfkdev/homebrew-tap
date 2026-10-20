class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.31"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.31/ddc-v0.1.31-aarch64-apple-darwin"
      sha256 "820e4a1c10ee687e2440007540f644f3cbab7897892f396962d1128d4860ec7d"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.31/ddc-v0.1.31-x86_64-apple-darwin"
      sha256 "82ec01b2a8acc390a628af65057c362e0b8900fc2873643eea9fc0ca18dbee2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.31/ddc-v0.1.31-aarch64-unknown-linux-gnu"
      sha256 "9133b8edb8d3b1a8c36c0030c7a7e0f544c1f40b75804b4e8c828e591e2a11de"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.31/ddc-v0.1.31-x86_64-unknown-linux-gnu"
      sha256 "32e54c374720ea2996400f5d614cb5876994909cfc204021e7a60b082eb821d3"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
