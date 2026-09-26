class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.15/ddc-v0.1.15-aarch64-apple-darwin"
      sha256 "e36cd5ba4021bed5e17b0d004049383f587f61d715d34a8dc0fae8dd7290eba4"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.15/ddc-v0.1.15-x86_64-apple-darwin"
      sha256 "33c6dbc1811b86a59a45db2d316a692e13d84dbba089f43c1af4943fbca02bd5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.15/ddc-v0.1.15-aarch64-unknown-linux-gnu"
      sha256 "7e8fe91c70b029dc799cd91884b62dad9b5a02784db7c335cea2c0428dd0822c"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.15/ddc-v0.1.15-x86_64-unknown-linux-gnu"
      sha256 "945239d320b7fcf4d6a826f735f50221c20b608214a02e6f4ebec4e5f5d96ac7"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
