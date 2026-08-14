class Jd < Formula
  desc "JavaScript deobfuscator (obfuscator.io + unminify). Go port of webcrack and synchrony."
  homepage "https://github.com/ejfkdev/jd"
  version "1.0.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jd/releases/download/v1.0.0/jd-v1.0.0-darwin-arm64"
      sha256 "3c04b73a84ad6639a54324194c852663f421859e350d0b969c35d18db111a8d9"
    end
    on_intel do
      url "https://github.com/ejfkdev/jd/releases/download/v1.0.0/jd-v1.0.0-darwin-amd64"
      sha256 "4c94a588d5333bb2066f9b1949763bfdbb720ccb2e1121ff88e15e89d62980d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jd/releases/download/v1.0.0/jd-v1.0.0-linux-arm64"
      sha256 "d992e6be66fa1f282c154b8be31d3ff606a32374b4171a0fe7119550f5472996"
    end
    on_intel do
      url "https://github.com/ejfkdev/jd/releases/download/v1.0.0/jd-v1.0.0-linux-amd64"
      sha256 "05cba23090eb23e6bbc4d3d1ec3faea43f194b58e058d92e55e58fb1a5dcad28"
    end
  end

  def install
    bin.install Dir["jd-*"].first => "jd"
  end

  test do
    system "#{bin}/jd", "--help"
  end
end
