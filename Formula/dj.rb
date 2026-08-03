class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.3/dj-darwin-arm64"
      sha256 "3ce818a1ba84b62843ef60e788b7147bff912e4723d5440fea7574bea49a0a8c"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.3/dj-darwin-amd64"
      sha256 "20c7ea29e3dae394d83ad550cd6090c9f59ad39c7797b79d2de78791c7fc116c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.3/dj-linux-arm64"
      sha256 "fae57b641e4c850c65787383d3d9b721167935e590fbba8b49206b24bce2a372"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.3/dj-linux-amd64"
      sha256 "1033872cba86d7e93b9a5649993cd8a6cbe86fde256ec6e3c9ce2516d7a431d2"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
