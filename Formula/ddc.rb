class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.0/ddc-v0.1.0-macos-arm64"
      sha256 "d29743f7ef2aafb1f2c2b0614c0ac415c0bd4d269391da1f628dca5bd16b4e16"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.0/ddc-v0.1.0-macos-amd64"
      sha256 "8486b0d2fe44351b35d529e5a727df56bc4494dc3f4ee7c7dba22d9be33a42d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.0/ddc-v0.1.0-linux-arm64"
      sha256 "9cdf15863094a0994ed085ef008c07a550418143ac0618e113ed5f930a52afd0"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.0/ddc-v0.1.0-linux-amd64"
      sha256 "dd66aa3759a27df6f24ff0016e309cbc48d66096042d5163c9170ce19d274aef"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
