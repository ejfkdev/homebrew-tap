class Dns < Formula
  desc "Multi-server DNS query CLI (concurrent, all record types, DoT/DoH/DoQ/HTTPDNS)"
  homepage "https://github.com/ejfkdev/dns"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.4/dns-0.1.4-aarch64-apple-darwin"
      sha256 "48c3de20c58ce743e68d559faa53c784ab105e9e82c355974bbf20b53c6ef1f0"
    end
    on_intel do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.4/dns-0.1.4-x86_64-apple-darwin"
      sha256 "753fc33d0cfcb2a7726d33ca24ba20f788c536248014989fc203b3fbf2fed07d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.4/dns-0.1.4-aarch64-unknown-linux-gnu"
      sha256 "da4ffb2560bd002a44078c13abeba106af54035d1701b429305120d54c4fb36b"
    end
    on_intel do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.4/dns-0.1.4-x86_64-unknown-linux-gnu"
      sha256 "76d699bf16cddfb3ff76ec1dd0fd4a8dff3facb536dfe98464b504ed6f9e3a79"
    end
  end

  def install
    bin.install Dir["dns-*"].first => "dns"
  end

  test do
    system "#{bin}/dns", "--help"
  end
end
