class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.6"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.6/dj-darwin-arm64"
      sha256 "5fb68c65ab322f42d059cf8cee0d781fd8793c3af3bee223a6e6f595ac364fd4"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.6/dj-darwin-amd64"
      sha256 "4c6b2dab2f2a4b92247eedcd954f2a8b50b0955656716f7aea9af1d174616cd0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.6/dj-linux-arm64"
      sha256 "3bebff784a359e189169cd276a829c2136073e8d239467d12aa31ab8b47d154e"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.6/dj-linux-amd64"
      sha256 "57ea7d2ebf31bb4da17937afcbba4343bc0133e108d6a59a50f0d662d104ad03"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
