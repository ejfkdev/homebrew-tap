class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.14/ddc-v0.1.14-aarch64-apple-darwin"
      sha256 "c079cb9264301252e8bd3b3e99f9ef24b46072c7e6dcdac4e5c363b078a07a8c"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.14/ddc-v0.1.14-x86_64-apple-darwin"
      sha256 "573adf9ae043d2603340f188ebe233ac07b19024f9367dbb136a42d1f3176496"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.14/ddc-v0.1.14-aarch64-unknown-linux-gnu"
      sha256 "9b8e499956ff3cd10300248b40f426957264ff17d9c53a633a561f8a52f42be7"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.14/ddc-v0.1.14-x86_64-unknown-linux-gnu"
      sha256 "d0267f2afff73e52aedb4cd945182bb60f1f685fba1292415d1a603e09f74f87"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
