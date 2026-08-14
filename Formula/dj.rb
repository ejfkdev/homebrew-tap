class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.5/dj-darwin-arm64"
      sha256 "f4f5bd9e2cc9ea3284dce6845fb2c6cf628ebbfd4ee99670c94b13525bdecce9"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.5/dj-darwin-amd64"
      sha256 "6cd122f143c17002ec74f20e1e8f6f430f11c353792439a762d33e55ae8e6758"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.5/dj-linux-arm64"
      sha256 "2204fded225447ed1f0ecc88726cf8a59748f7f488520ca3b0c3afa911fcb711"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.5/dj-linux-amd64"
      sha256 "d6f044cf2021e07e459b07914b4649985229f72555626087e652c4b2b7e858b2"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
