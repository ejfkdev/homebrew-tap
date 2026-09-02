class Ov < Formula
  desc "Download URL version prober: auto-detect the version in a download link and probe every version combination"
  homepage "https://github.com/ejfkdev/ov"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.0/ov-darwin-arm64"
      sha256 "72ec874772b635b02e758b0609521e0d1d363dacd6fce8c87cc8e8162e160920"
    end
    on_intel do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.0/ov-darwin-amd64"
      sha256 "c364412e3d4dc7c49e6d8dd2fd6ff9d0e4256ca0606258ab44468320c20be56f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.0/ov-linux-arm64"
      sha256 "fbe6c018441e2ce48d326fd246ad09596dd9838e88f05b620310376012688d5b"
    end
    on_intel do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.0/ov-linux-amd64"
      sha256 "3853c3ecbd96724a5cac886febcb3f91fa8d2f7f136f7901cd6d83d9a899e5ab"
    end
  end

  def install
    bin.install Dir["ov-*"].first => "ov"
  end

  test do
    system "#{bin}/ov", "--help"
  end
end
