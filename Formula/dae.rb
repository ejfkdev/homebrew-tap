class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.11/dae-macOS-arm64"
      sha256 "4f90ea771774565997dc50440837770c44d8c7fe668f5c0bf3ac0e94406b18e9"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.11/dae-macOS-x64"
      sha256 "5f6c56d159b9b30577f5c0d80af038d8c508988d86d55c2e65cb62d73ff11ed0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.11/dae-Linux-arm64"
      sha256 "5194e2a081899226c07d0436bd5edfaa921da91379a64f83e4f116e31903ee54"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.11/dae-Linux-x64"
      sha256 "6ee8506db6b15f0fc05bd8f33c4c485dbac9544b83c8ebb769c7f1fb2f1d978a"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
