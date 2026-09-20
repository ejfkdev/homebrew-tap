class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.5/ddc-v0.1.5-aarch64-apple-darwin"
      sha256 "0e7a6d5b40d28d8be25a9e99bc6c2c9769533da483b3736fbcfc6a667292145b"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.5/ddc-v0.1.5-x86_64-apple-darwin"
      sha256 "6607e8868c7957229be7298efd81b69776393af3a28148feeb75b726854261e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.5/ddc-v0.1.5-aarch64-unknown-linux-gnu"
      sha256 "bb4567f419b04a9436361b98ab8f330fce73493451252e7aa0c2d30292153e5e"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.5/ddc-v0.1.5-x86_64-unknown-linux-gnu"
      sha256 "baa516543cd9b6f5b3d81980ad58ee554328a53800fc555a31377ac2cf08adda"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
