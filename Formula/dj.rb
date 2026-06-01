class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.1/dj-darwin-arm64"
      sha256 "58d4020eb741d35718c109b104702a5af14e3e86aece996775eea771b11e9fcd"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.1/dj-darwin-amd64"
      sha256 "48acc5e77d2147a35e73e2ce24f761d6407cc9cca1f7c020e208b72ba2809d54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.1/dj-linux-arm64"
      sha256 "cdaab78421a504850a76cf0c643f55977c9cbf5e0f7fb6331c9ab2a8fc5e0ce8"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.1/dj-linux-amd64"
      sha256 "4263d36d0ec094cdbd125818852d00508b8c5870992afa2433b22298c74ba80d"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
