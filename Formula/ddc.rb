class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.10/ddc-v0.1.10-aarch64-apple-darwin"
      sha256 "044e3dbcc11e33136d7e0d6834c7d6218047d42761802e0d490359a08e91b02a"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.10/ddc-v0.1.10-x86_64-apple-darwin"
      sha256 "0bcce594646ef863b411b8a80e95e1054b0b8c76b7e1cc291681df2ea707afb9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.10/ddc-v0.1.10-aarch64-unknown-linux-gnu"
      sha256 "c8f7fe7887389c11abe545abe97dba12c5aeef7f417b432053ece34a196291fd"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.10/ddc-v0.1.10-x86_64-unknown-linux-gnu"
      sha256 "cc926b2b1d8757e980d83f0777852854670a3c71b7010ce26813ac754c7970ad"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
