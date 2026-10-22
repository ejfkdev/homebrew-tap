class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.33"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.33/ddc-v0.1.33-aarch64-apple-darwin"
      sha256 "296ac2099ae930ed2d91a37469078780ca9518ea2a7bacb4e0d9118b82c505a6"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.33/ddc-v0.1.33-x86_64-apple-darwin"
      sha256 "9e33f026e4e7c402ebaf241f64ed33e940d386c57f96c53830f99badaafa6feb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.33/ddc-v0.1.33-aarch64-unknown-linux-gnu"
      sha256 "74b82c9ff0d812536129a5f92ac48ea77afb4c1be07fb09d1bab8a798911c1b0"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.33/ddc-v0.1.33-x86_64-unknown-linux-gnu"
      sha256 "afc9434738fe2634898b62c71adb82849391a6bc43e9d19f7a4c88a51e3afa78"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
