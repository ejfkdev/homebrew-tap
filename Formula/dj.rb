class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.2.0/dj-darwin-arm64"
      sha256 "710ce7abf48fda62985069d60e97f6d94f0df1e38867894090fb06d7346d16b4"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.2.0/dj-darwin-amd64"
      sha256 "4c839ceaafc6fe8a5eb55a6084eedf0298ce65c424a4a827aed7d101c44fe526"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.2.0/dj-linux-arm64"
      sha256 "524315c21be4416f8d7ce35b6b1f2d8a046a6a35b7b90968732bc41de65586ec"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.2.0/dj-linux-amd64"
      sha256 "0ffe2b5952a6cd0814694ffb43b759c3b530ed9e566c13d5e66ccd0b74ed2dd0"
    end
  end

  def install
    # Downloaded file is named after the OS/arch, rename to unified command
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
