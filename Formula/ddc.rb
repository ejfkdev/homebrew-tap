class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.9/ddc-v0.1.9-aarch64-apple-darwin"
      sha256 "5d46d8886287334be278caff087165ee66b1dee4ffab0eff34f48b2ce0361bc2"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.9/ddc-v0.1.9-x86_64-apple-darwin"
      sha256 "e873c98d7ceb586600e895a39be0690ee184178ecde6e601e99d1dd85abf4282"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.9/ddc-v0.1.9-aarch64-unknown-linux-gnu"
      sha256 "8f4321e39c630968f4c3f070fe5b8bb41917266a23f45835549748ccf76c9dfc"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.9/ddc-v0.1.9-x86_64-unknown-linux-gnu"
      sha256 "ace5904ffa545901e4274e060f1192464e3986469586d53e5c53bd7e5d038f9d"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
