class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.1/dj-darwin-arm64"
      sha256 "aba995dee1c6c813e9c30a98ea278d32818ee499c97e4e4ba06d48b0b598668d"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.1/dj-darwin-amd64"
      sha256 "25aa62a179223c7224143d74f0ac40c8ba8146e4dc181db2261549dabd7d23d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.1/dj-linux-arm64"
      sha256 "83e17c6fd680ab4436f47af4728acfc08b13c8772696ad3944dc9aa5fde7cb76"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.1/dj-linux-amd64"
      sha256 "9848b11b797a3cddb6de62be630a2340b779138daf90f72bb3b5150df8189308"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
