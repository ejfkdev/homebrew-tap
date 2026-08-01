class Dns < Formula
  desc "Multi-server DNS query CLI (concurrent, all record types, DoT/DoH/DoQ/HTTPDNS)"
  homepage "https://github.com/ejfkdev/dns"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.1/dns-0.1.1-aarch64-apple-darwin"
      sha256 "aafabca045f339ae8f8a5f1d27beeac25d1e7863ac56cac0140d942a0871b5f0"
    end
    on_intel do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.1/dns-0.1.1-x86_64-apple-darwin"
      sha256 "a0b6ae3d057152325cb7378533dc6f6dd4f04fe8a7142c9795249a3acfd61db1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.1/dns-0.1.1-aarch64-unknown-linux-gnu"
      sha256 "5b4d09ce90fa2ada1a992b07f9799724addacfc53de4c922ef23f8c91a437032"
    end
    on_intel do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.1/dns-0.1.1-x86_64-unknown-linux-gnu"
      sha256 "92985bd8acd8bb671bce2af506fad0a3c1485eaf55bc26e7a80338d68770623e"
    end
  end

  def install
    bin.install Dir["dns-*"].first => "dns"
  end

  test do
    system "#{bin}/dns", "--help"
  end
end
