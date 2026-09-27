class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.5/dae-macOS-arm64"
      sha256 "041a66866ad8c82d8350d9a549cab5a3cac56920605b6178cc0c8a2fc0c8eb20"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.5/dae-macOS-x64"
      sha256 "c1788b7c26a408cf453a15573937aab8dfc0c18991e49c4b105913592293d387"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.5/dae-Linux-arm64"
      sha256 "d5d8e99cd2f5950e5f9870f7239a82b5eecf63bc1ae6609476515bebd05466e6"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.5/dae-Linux-x64"
      sha256 "8d6b2a74c78062d67fb88d420c68da6c53aedff3e9dba2111cac16fb66953a48"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
