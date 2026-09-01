class Dae < Formula
  desc "Dart AOT snapshot debug-info exporter for IDA / radare2 / Frida"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.1/dae-macOS-arm64"
      sha256 "9ef099d9a1c57d44dec4a4415f3846535c953eb15655167de3f6a94a187ddd13"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.1/dae-macOS-x64"
      sha256 "e748ec8893954ac0244b5ae6881bc2671479d83d5ca299387486b3bbc76a81f7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.1/dae-Linux-arm64"
      sha256 "952a6af3970d7d2d956c41e8c63729ea38e1c05e128149f50e58c88443bd16da"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.1/dae-Linux-x64"
      sha256 "cbb270c280f414fae44ae25819af124e5f29807e3c64539db9dabbdaee5222fb"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
