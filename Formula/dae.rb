class Dae < Formula
  desc "Dart AOT snapshot debug-info exporter for IDA / radare2 / Frida"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.3/dae-macOS-arm64"
      sha256 "26edb04277ade450593778e528461977b575192a66d0412f37b77516ebbdad16"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.3/dae-macOS-x64"
      sha256 "521be9cabf29d021f44fb7e1a257c221b7df99649943fdce9cd150fe82ab1e77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.3/dae-Linux-arm64"
      sha256 "8b7eabc90dd38079e7b1b4e8141bee270c909df268b8c30ec18d599bdd846bc6"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.3/dae-Linux-x64"
      sha256 "bd76dd5e0c23c9301febdc8c2164056fa0d22e90a4d3176ea38e3b28466cf85c"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
