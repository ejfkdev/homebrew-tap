class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.2/dj-darwin-arm64"
      sha256 "cf4c3884069376e15b77699f72d0c09b9d2cece87768d56ede7c4721a44b1d17"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.2/dj-darwin-amd64"
      sha256 "f68710029388e231e38d51fe4904c01c921d10cd94e8fd984c960e7fd485b540"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.2/dj-linux-arm64"
      sha256 "babfdaf1073720d1a70b894a47e817de84300b23d2d5e35388bd01ccfb767e3b"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.2/dj-linux-amd64"
      sha256 "b8a839f13775359883fc2a06ac58770d031b87e1e6c90edaa160e798897d87ac"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
