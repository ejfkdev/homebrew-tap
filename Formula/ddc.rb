class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.34"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.34/ddc-v0.1.34-aarch64-apple-darwin"
      sha256 "08849a2f6af080635dc774c36231ac4da0cbf5f1387b97c02edb739f858b2ebe"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.34/ddc-v0.1.34-x86_64-apple-darwin"
      sha256 "78eed6985c23cba120b512665014d5b37ebaca0aebc7914b1f38636575b49840"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.34/ddc-v0.1.34-aarch64-unknown-linux-gnu"
      sha256 "efdb6ec93e1ebd17715a74ae8593e4fc6b7b7945354eeb60686ad2fd5f8551ce"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.34/ddc-v0.1.34-x86_64-unknown-linux-gnu"
      sha256 "77f54753c2daabeccb3efafa43136de15907e2d6ed8a78f66d4848228b03f096"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
