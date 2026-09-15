class Jcdc < Formula
  desc "Java class file decompiler written in Rust (Java 1.1-26, class version 45-70)"
  homepage "https://github.com/ejfkdev/jcdc"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.2/jcdc-v0.1.2-macos-arm64"
      sha256 "ebbdb1dbf9450cb75c64019c8322780f2ac1b00f9428d439924a8586ee308ea8"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.2/jcdc-v0.1.2-macos-amd64"
      sha256 "290d79dcd1f3089c8cf9516e831ec9a597e07a42789d68a04c19663c23970849"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.2/jcdc-v0.1.2-linux-arm64"
      sha256 "4792787f67699ff53c7a4b40a6309da63a5f299a1f6f0dbb0e769d2ba9350141"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.2/jcdc-v0.1.2-linux-amd64"
      sha256 "14ea2ce2044696ac163682357867e5cbcb0142b56697fd3daa8b577dcf87448c"
    end
  end

  def install
    bin.install Dir["jcdc-*"].first => "jcdc"
  end

  test do
    system "#{bin}/jcdc", "--help"
  end
end
