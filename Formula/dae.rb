class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.13/dae-macOS-arm64"
      sha256 "1cdbe78aadf143f23027469aac8be6993c67839f0595956e7a7fb57c66dd44c3"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.13/dae-macOS-x64"
      sha256 "14aa6c90ca3dbecd2404ffc7036e30fb616f89f203db1d0dbf9b095da614f568"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.13/dae-Linux-arm64"
      sha256 "36d161c0af694aa087d2bdea81902e64c5a6ae236c4fba25566b381f788fdc09"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.13/dae-Linux-x64"
      sha256 "37fb8ddea7fe0710d6994ac3f9c0484d9b1aa9b320cfae134fc76a78b9f5db7f"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
