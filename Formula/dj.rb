class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.7"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.7/dj-darwin-arm64"
      sha256 "61f4dea7220340cfeb91f2c5a3208cd85727f7bf0f170d7e3e82f5d566ef1636"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.7/dj-darwin-amd64"
      sha256 "daebedac8d89fbfd7862b2f3612a09458e5f5fe219e24f712064c5450ae39545"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.7/dj-linux-arm64"
      sha256 "2a043c65a9987a3b964b212d10a61d41eda2436c1a39ba6b589b33d0149de54e"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.7/dj-linux-amd64"
      sha256 "a4539337fa7defdddc5dda9fbe3917dc7dd1e0e17cff685edf49c8ad5fabcfa0"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
