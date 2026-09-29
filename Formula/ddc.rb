class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.21"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.21/ddc-v0.1.21-aarch64-apple-darwin"
      sha256 "c9eab553e15f0c62f08853e7858c80128d330743f6619ef3b232e35514ff8c86"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.21/ddc-v0.1.21-x86_64-apple-darwin"
      sha256 "769d479bb97a05218d49c75b35d4cad338fdb88b39cee9558e80349d2bdb56e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.21/ddc-v0.1.21-aarch64-unknown-linux-gnu"
      sha256 "ec5ec83902b8616b9421b4038548fd532d1247a5d239a23e8464a184723b0f65"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.21/ddc-v0.1.21-x86_64-unknown-linux-gnu"
      sha256 "2fd980ce1fb025e48285e6916a0b1207ca4a0d6a481802952b09ab182baf4685"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
