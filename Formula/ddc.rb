class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.23"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.23/ddc-v0.1.23-aarch64-apple-darwin"
      sha256 "a0b6bf476695eb96b5b8f3b0bbc75d493f6f75660002afa9f56f527c36a5fc5f"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.23/ddc-v0.1.23-x86_64-apple-darwin"
      sha256 "8d8ad0c3a7ad94117b44ee8c6b31e14cd117bf8c266b3b7e83984d5beefca245"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.23/ddc-v0.1.23-aarch64-unknown-linux-gnu"
      sha256 "666ef797326795d6ac02deba2ae7ba04806ca59a106d6b7dc2879206048cfa56"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.23/ddc-v0.1.23-x86_64-unknown-linux-gnu"
      sha256 "d84247525fa79aadf7905155b79668d781799ac34441ce5915281318df78ea92"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
