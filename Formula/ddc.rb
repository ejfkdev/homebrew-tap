class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.2/ddc-v0.1.2-aarch64-apple-darwin"
      sha256 "ba628027d30df984e3d71c30e0f0ff5c5da6e4d9d8bcccd541a0fbcb974247b8"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.2/ddc-v0.1.2-x86_64-apple-darwin"
      sha256 "00ce784356a60ae8061ef7fe4faea58b042f9feb5a04377d1a39012efc6c3a4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.2/ddc-v0.1.2-aarch64-unknown-linux-gnu"
      sha256 "38daac4ce99c6e070ec1965c90eb41a427e0c44d1ee376a26310c0f9afb048cf"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.2/ddc-v0.1.2-x86_64-unknown-linux-gnu"
      sha256 "c836bba6c087039532c80ea813543cff29c05b2b4e8d59cf97b1c2ec16ac365a"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
