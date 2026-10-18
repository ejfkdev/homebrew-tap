class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.30"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.30/ddc-v0.1.30-aarch64-apple-darwin"
      sha256 "375a8daec4805f6fdd293254af894d7c2892bf7acafb4af895b76e28f063fb2f"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.30/ddc-v0.1.30-x86_64-apple-darwin"
      sha256 "a6c3ee831aabb2309f2994eb4f4c1af7a0128d5a4d8674f213cb284024216380"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.30/ddc-v0.1.30-aarch64-unknown-linux-gnu"
      sha256 "7cdd59ae5be119e2453e41d60b215bb067510436b1289766541dcd882207a59a"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.30/ddc-v0.1.30-x86_64-unknown-linux-gnu"
      sha256 "629eaca0f16862931c1c97a7ffc9f85f030c6322c73992acd88cd83d0765a6c9"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
