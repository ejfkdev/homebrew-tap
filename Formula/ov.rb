class Ov < Formula
  desc "Download URL version prober: auto-detect the version in a download link and probe every version combination"
  homepage "https://github.com/ejfkdev/ov"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.1/ov-darwin-arm64"
      sha256 "c1be142874af8b68b3f52fd8046893085ec35fabeaa1bef97f3590a3de462fcf"
    end
    on_intel do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.1/ov-darwin-amd64"
      sha256 "fec44ce79fc8083e25120864c54b197e91fbf9a7362ae50cf9ff0e1793d07a4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.1/ov-linux-arm64"
      sha256 "95d2edd132ee3770b2f8ab085a941e9061f6ad5a77a03fb5bbd2ac58eddde242"
    end
    on_intel do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.1/ov-linux-amd64"
      sha256 "7970051bf699269bd270dc059c999443d9d3a40f722de43cda2d81c42ded1dd1"
    end
  end

  def install
    bin.install Dir["ov-*"].first => "ov"
  end

  test do
    system "#{bin}/ov", "--help"
  end
end
