class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.14"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.14/dae-macOS-arm64"
      sha256 "646bd2391d03ba6a8a3206558490393a124efaf9590a20be464d1f1209b3cb11"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.14/dae-macOS-x64"
      sha256 "d193872ce6b853bf0d46ce5df34d30c9551854653b319c6d4c6db76ee7df395b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.14/dae-Linux-arm64"
      sha256 "daec0cc4e45edc304263c6e9ab221927bde4de1c94ff5e4d05d1916708786b0e"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.14/dae-Linux-x64"
      sha256 "00c71c51dad99d4ad3642f6f7f45561a2feacc11122074924bc3913b9d0b7b46"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
