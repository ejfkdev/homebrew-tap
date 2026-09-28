class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.17/ddc-v0.1.17-aarch64-apple-darwin"
      sha256 "5c066c8b0223265e716c598b2117c82f2189c1a33d0758016d197fa77427b959"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.17/ddc-v0.1.17-x86_64-apple-darwin"
      sha256 "e9c0e1ccfd108d9ecd6934faff1dda828963caef46cc49fe993cd2d0f2c40054"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.17/ddc-v0.1.17-aarch64-unknown-linux-gnu"
      sha256 "a77552fe0ce073df3f6ee335618dd32e43b48a563960681920c267003c264a0a"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.17/ddc-v0.1.17-x86_64-unknown-linux-gnu"
      sha256 "9f187a03e9ab912e2eb7a46949785271a927f8dc267a37a95639237cf93452a4"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
