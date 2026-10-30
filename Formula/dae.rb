class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.15/dae-macOS-arm64"
      sha256 "12ddc23f194fc1b880ff9ad85510188fdbb53c4a549e379acf9de385e5cfd140"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.15/dae-macOS-x64"
      sha256 "0e04cafcfb2f0b0d437308303edd3430c661e71ddc00908009a0fa97d0240999"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.15/dae-Linux-arm64"
      sha256 "6cd9bc2ed1eb5b1a24ffbe34d5c2ddad6c9dac36a88e48d6ac1090ca3246b3c1"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.15/dae-Linux-x64"
      sha256 "a4eaef91b690bade15663a40dd0e06dd223e01ec5fc6300c772cb6176f0f7eb1"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
