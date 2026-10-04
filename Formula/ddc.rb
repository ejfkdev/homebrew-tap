class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.25"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.25/ddc-v0.1.25-aarch64-apple-darwin"
      sha256 "f9c429d8e8117e6d0163b41026619917636c9d478922114640b507f9f7aa327d"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.25/ddc-v0.1.25-x86_64-apple-darwin"
      sha256 "2fdf926e613d699f3dec327adce2de2752271675279a03c93163fafab575ca58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.25/ddc-v0.1.25-aarch64-unknown-linux-gnu"
      sha256 "ff08c9fd51f5eee34784480e20014da38f42de27666cbd344c30208f5f4b78ef"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.25/ddc-v0.1.25-x86_64-unknown-linux-gnu"
      sha256 "6205f3fe3ec8f4c746a10bb2a0db8b670df6ec0822a91b1ba51cf6aefc2a972c"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
