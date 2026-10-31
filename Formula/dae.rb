class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.16/dae-macOS-arm64"
      sha256 "d87b937828d8298f85dd00ccf12c97e5bdd848ae344a0b5d53100ded79fac227"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.16/dae-macOS-x64"
      sha256 "94cc5b85454f25b0712163b2dcca70a464a8225a59b42ae4c169b69aa601b8c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.16/dae-Linux-arm64"
      sha256 "78cd3561d83b2709d0eaa2188be7571ce189c97cf7cd4b099e114ce066d705f3"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.16/dae-Linux-x64"
      sha256 "11bf4995041a0abbb63e0eb9807df63b243f76a4d9f77794d61b568bb40e4172"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
