class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.27"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.27/ddc-v0.1.27-aarch64-apple-darwin"
      sha256 "c2c141333dfb2fcdd4bfee0eec7d428008e3d0e98a265a61d386822f256f45b0"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.27/ddc-v0.1.27-x86_64-apple-darwin"
      sha256 "9ef482293d82a33cade3c4c768b12e03954118ba5050ddf56ed31b489f8f6e91"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.27/ddc-v0.1.27-aarch64-unknown-linux-gnu"
      sha256 "8b47e646bd4cfba1d2b5890f5dc2fff0dd979f47245643f89224a23c1adb0de1"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.27/ddc-v0.1.27-x86_64-unknown-linux-gnu"
      sha256 "3ddbf9f07fd8e11b1487ecdffa1f03b7f08fdfef47ad24e5986a33884cccafdf"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
