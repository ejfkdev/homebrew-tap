class Dns < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dns"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.0/dns-0.1.0-aarch64-apple-darwin"
      sha256 "b827273e040719fbd4c2254b4fff2714cceecc260856d765bd439835174f8397"
    end
    on_intel do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.0/dns-0.1.0-x86_64-apple-darwin"
      sha256 "cf12e2eca9f2538b23db69dc5a32a5dc83b080eb01d83c42f03026b44d85131d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.0/dns-0.1.0-aarch64-unknown-linux-gnu"
      sha256 "fe5b4f4e747474410965f41b2ab865476988ca325f3b5ff91f7746c0d6c18ee7"
    end
    on_intel do
      url "https://github.com/ejfkdev/dns/releases/download/v0.1.0/dns-0.1.0-x86_64-unknown-linux-gnu"
      sha256 "317ce5b5c6a4e624d976e1c16e64d47e310bada66fd8a93d7af3b6b543d27e64"
    end
  end

  def install
    bin.install "dns"
  end

  test do
    system "#{bin}/dns", "--help"
  end
end
