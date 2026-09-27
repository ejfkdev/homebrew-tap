class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.8/dae-macOS-arm64"
      sha256 "17166a618db488d7c94974b180dd370d014b49fceecb4d4195f7b09bd012125e"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.8/dae-macOS-x64"
      sha256 "5a2c7e2bce72294b60cf3aee2af82212a9f7d2affdde433fd9452073bb9214b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.8/dae-Linux-arm64"
      sha256 "19cbf4aa7f62ecf27d9d7d87cbe7f77846a83cab0fa7868408214c9d091b8d83"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.8/dae-Linux-x64"
      sha256 "81190eff8e229aba49cc8dee43778e1a9568562182c89364d9e3f1507c017a97"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
