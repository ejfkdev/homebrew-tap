class Dae < Formula
  desc "Dart AOT snapshot debug-info exporter for IDA / radare2 / Frida"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.2/dae-macOS-arm64"
      sha256 "0f91b1ef412e64a0272bff1f84c9323fe19834405502b71a9b3931c93a5bae87"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.2/dae-macOS-x64"
      sha256 "37185d5913d7e6a64ce91f942a35e45b18507c7304e492d09c42b421bd52bf83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.2/dae-Linux-arm64"
      sha256 "3ab22250140e5fd693b6ad43dd0c427fd62539ec0fa0497c961fb8c0f8e7b992"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.2/dae-Linux-x64"
      sha256 "25009bc77eee6e8c6f2467a16ee9ea2b3b50be52820e42ecd979e098d57683e2"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
