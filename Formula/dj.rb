class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.4"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.4/dj-darwin-arm64"
      sha256 "97d0825cef66940ed430d4ca2572ebabde031b4bad80a31946b5c300ec9fbdf7"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.4/dj-darwin-amd64"
      sha256 "2a941a08ac49271476734ac24c84b70a16d122976db839b16abf3eef1e21b983"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.4/dj-linux-arm64"
      sha256 "6dbaadedf7eff96570eaae344e784e99389d229b0ad2959b1a2887b5dc8a505e"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.4/dj-linux-amd64"
      sha256 "062ca8d360b5b7378576155d26e8d67edbb0554dada62dfb08999454d181b3ac"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
