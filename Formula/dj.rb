class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.2.0/dj-darwin-arm64"
      sha256 "ceca2c71a477a3e091861936874880c702cd5404fd2c543967aea6cc79e4aee5"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.2.0/dj-darwin-amd64"
      sha256 "254ed6218471844e10dd059f70b47ec6b21db03fefa8a931684a46a06aee03f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.2.0/dj-linux-arm64"
      sha256 "f2e9781ebaee2cc18db740113a1a7012f11a4166d67b8856268204b8326f7893"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.2.0/dj-linux-amd64"
      sha256 "959a241489b02c6557645a5ee9a36c93168241d72566c7f6a88a62c3b40708cb"
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
