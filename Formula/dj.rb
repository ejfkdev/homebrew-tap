class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.3.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.5/dj-darwin-arm64"
      sha256 "05936a4494db8bd4208ade9689f3415095982b8cb4210128d2eae01ae13299d1"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.5/dj-darwin-amd64"
      sha256 "567b0e8a0b7c48677a973d519129e80fd4dad01f8a025884b78d328b15e050b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.5/dj-linux-arm64"
      sha256 "f0a00946e6f79af8183fddc997be91f15fc0d762e996565b2727393fd296374d"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.5/dj-linux-amd64"
      sha256 "440d344a7ddeee5931e22ca8a3f3fb610461c87e357c97e8d04cd805a858e4f4"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
