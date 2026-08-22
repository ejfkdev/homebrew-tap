class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.0/dj-darwin-arm64"
      sha256 "0d34ffef07498c09188d6f89f77c460dc0379adcc6d61ccde2bd4cfbd821e271"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.0/dj-darwin-amd64"
      sha256 "678094f924a576c0add46d13485914136b2523166de84cf99a8d8e8998bf58d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.0/dj-linux-arm64"
      sha256 "3f15da06423bf79b92c01865cfe5428afd5a9a1014ca3842ea2d13bf2bc7ca84"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.0/dj-linux-amd64"
      sha256 "9b37eaa41519081684df0bc3552518cb2a53969bad55dd95c61ca13279b01e1d"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
