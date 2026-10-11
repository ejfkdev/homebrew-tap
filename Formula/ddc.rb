class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.28"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.28/ddc-v0.1.28-aarch64-apple-darwin"
      sha256 "096e79a693c9b401830be65ef3b9e1a3578c7cb383075bb7d06b843c1b0eeb02"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.28/ddc-v0.1.28-x86_64-apple-darwin"
      sha256 "0379c4bf534a0a420f8793e3a88f0cbf4714fb3d40ef7c90b9101932286635be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.28/ddc-v0.1.28-aarch64-unknown-linux-gnu"
      sha256 "2e3048b320f601be05936004b3df5957848c33f165ff0c41418fd8805b674927"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.28/ddc-v0.1.28-x86_64-unknown-linux-gnu"
      sha256 "7f6a90e035805a7f3d22f6095bf8db3ea612aefa01d688f08f316fd34ecda44d"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
