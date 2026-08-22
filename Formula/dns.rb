class Dns < Formula
  desc "Multi-server DNS query CLI (concurrent, all record types, DoT/DoH/DoQ/HTTPDNS)"
  homepage "https://github.com/ejfkdev/dns"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dns/releases/download/v0.3.0/dns-0.3.0-aarch64-apple-darwin"
      sha256 "443e5ee8c17a4cfdf6580b7a0a74aca85f33b6d0f226c5a4a4193e374e67bdfb"
    end
    on_intel do
      url "https://github.com/ejfkdev/dns/releases/download/v0.3.0/dns-0.3.0-x86_64-apple-darwin"
      sha256 "e6e7c5ad86b8b6878fca33960024365f0c7c075e419f49104b4d4bbf371887e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dns/releases/download/v0.3.0/dns-0.3.0-aarch64-unknown-linux-gnu"
      sha256 "28d15a197caf9fee59bfc2a54b79c1d958643b2f30a661e38f3991bad6ebfc65"
    end
    on_intel do
      url "https://github.com/ejfkdev/dns/releases/download/v0.3.0/dns-0.3.0-x86_64-unknown-linux-gnu"
      sha256 "b719a71ecbdcb2944f5f1cb3ea0aef22f9ead0f5cec1b16701e3f77a403ae090"
    end
  end

  def install
    bin.install Dir["dns-*"].first => "dns"
  end

  test do
    system "#{bin}/dns", "--help"
  end
end
