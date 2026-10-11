class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.29"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.29/ddc-v0.1.29-aarch64-apple-darwin"
      sha256 "db6550def4ccb5e094915d03dc10458c7b3310c942289aa03e26d986a93ac724"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.29/ddc-v0.1.29-x86_64-apple-darwin"
      sha256 "44843801762a20f152d52f73bfdda740374ae61364d05224fb632be836c48ddf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.29/ddc-v0.1.29-aarch64-unknown-linux-gnu"
      sha256 "4e62fa5664b19dc3d8fee764603bae27c639035d80d5259fd5ce38da09a80553"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.29/ddc-v0.1.29-x86_64-unknown-linux-gnu"
      sha256 "ee27e28b4418c80a1b715001fa1795f67e5dbac7edd4629d60efaf665990119a"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
