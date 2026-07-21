class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.0/dj-darwin-arm64"
      sha256 "cc1e516b521357e4efda0eee170dc777c6974c815192009b5a2572052c149de1"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.0/dj-darwin-amd64"
      sha256 "dcc089b1f5336a6db957d55a83f18cb0301162f8f97b1f4f08f2e5a625598231"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.0/dj-linux-arm64"
      sha256 "3c547a107524c627d643454479422a6f443780c38bb55c2515c77b1de5fa5d71"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.0/dj-linux-amd64"
      sha256 "78d2afe0fddfd4351200daf3a73f12e95f510041c1cf394b76850154f1423ed9"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
