class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.6.4"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.4/dj-darwin-arm64"
      sha256 "1491f0b650f95d746b246f9d2b86dddeacc9394ae193feec749b033913815028"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.4/dj-darwin-amd64"
      sha256 "784b753f09e26f70496f98bd8a8b7cba87bdf568a3e85732289b118efbd8c80c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.4/dj-linux-arm64"
      sha256 "e6035d5d4d0ca1025fee21108c34ffb2c567b8abd8fbb88915a4d231cd983eec"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.4/dj-linux-amd64"
      sha256 "97024cc9f70d03299202554babce1cfd50e2126ebf4e8e0ee2932b9c7cbd5989"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
