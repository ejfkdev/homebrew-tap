class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.13/ddc-v0.1.13-aarch64-apple-darwin"
      sha256 "f454cbafc4e83c49c00e90e36081817f189c041966047f501a3f14d25e818495"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.13/ddc-v0.1.13-x86_64-apple-darwin"
      sha256 "f91f5826deca5d26ff0d43ba40412858abbf9b9d4dc7d290619d68dbe5524cf7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.13/ddc-v0.1.13-aarch64-unknown-linux-gnu"
      sha256 "c25fe9e26b8efc7cd436c544f3ecae01dea5a1dced0d539fd3687a5a68dd8716"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.13/ddc-v0.1.13-x86_64-unknown-linux-gnu"
      sha256 "a153726d52dda05ee2f540b8cf1c8ce32007a54e88125205af1ef19ac964045a"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
