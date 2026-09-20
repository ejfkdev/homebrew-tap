class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.7/ddc-v0.1.7-aarch64-apple-darwin"
      sha256 "fa76fd2c16b426acbf5f69163bad4b515b46fb35d818bb53c659350d549312b6"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.7/ddc-v0.1.7-x86_64-apple-darwin"
      sha256 "c15c24ef6e6d561281cc23c1e067662aecba027965938c5e9691bbf32762406f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.7/ddc-v0.1.7-aarch64-unknown-linux-gnu"
      sha256 "60d4ae0cad013956752bc808b92d61cdb9460e04c99d125d82e26c6ff2204643"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.7/ddc-v0.1.7-x86_64-unknown-linux-gnu"
      sha256 "5955b950a9163a3cf14e71cf7bec96edeef0aeee9c236e3a5fcca968338b5e64"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
