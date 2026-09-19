class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.3/ddc-v0.1.3-aarch64-apple-darwin"
      sha256 "9457cb88af1953340f752d4a817ff8eacaf360086bf064c707e9d6e797f0635e"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.3/ddc-v0.1.3-x86_64-apple-darwin"
      sha256 "79d9e57bb5f7a83a3df5d9da505b486afdb6757b61a39a39c7cbdce437489cc1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.3/ddc-v0.1.3-aarch64-unknown-linux-gnu"
      sha256 "9554dac102a2926d1aa3d8dbc3831277e4923b292bfbdd95c1fdcd2356ab3cd2"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.3/ddc-v0.1.3-x86_64-unknown-linux-gnu"
      sha256 "f8fac5def963f2a74381b87c0973bd3290365dbd1ecdbb7f8d87cbb54ef5c0c4"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
