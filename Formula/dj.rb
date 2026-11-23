class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.6.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.5/dj-darwin-arm64"
      sha256 "0cb77ef383c0be79dd04b2acad894c12f817c47c61bdc840e252c309167796bb"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.5/dj-darwin-amd64"
      sha256 "e8c039efc33b6e4623efb862e6fddccd114283b3bb9a920d115928c55c0be6ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.5/dj-linux-arm64"
      sha256 "d4e468992341038487229c3448ceec98fb6d46ced88cfe0a7c490662a5e05724"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.5/dj-linux-amd64"
      sha256 "028920de1e0c00992acb4912828df9429d4799e9a400416015895cbebdd5e2be"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
