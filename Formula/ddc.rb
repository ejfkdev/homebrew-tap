class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.26"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.26/ddc-v0.1.26-aarch64-apple-darwin"
      sha256 "e154018c0c337d88e0826451b51beee27463f9887168cbbb81be5099f311188d"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.26/ddc-v0.1.26-x86_64-apple-darwin"
      sha256 "83be1b514d8ab7253805a4ad0510b1bd68204765eef2315fccbb6f841576fac9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.26/ddc-v0.1.26-aarch64-unknown-linux-gnu"
      sha256 "c40779cf3555332333d41cfb390008e6801d28ad29b8a2c3032e3688e2f6909e"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.26/ddc-v0.1.26-x86_64-unknown-linux-gnu"
      sha256 "0485050fa88857f533db2ab92ced37bd57d7c86edb8721c8367d3c22d09438e4"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
