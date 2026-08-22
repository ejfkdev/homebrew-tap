class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.1/dj-darwin-arm64"
      sha256 "b08d661a35752089e1717da7964d6cba83a2f0c7c6b9c4b0226e7d335ff924fb"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.1/dj-darwin-amd64"
      sha256 "b899553a165009fea762b80c950a8010b83575822f38c5180d17e5b33b2950f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.1/dj-linux-arm64"
      sha256 "5d59d83e5c4b476eb5acb22cf8d5783b1a2fb35ee445d3b31f8cba2170cbccd3"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.1/dj-linux-amd64"
      sha256 "6adc0d283524dc585afbcfbe4b7783613a3bf934c79a8cccc6e686552147ad19"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
