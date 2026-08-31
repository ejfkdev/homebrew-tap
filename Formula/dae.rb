class Dae < Formula
  desc "Dart AOT snapshot debug-info exporter for IDA / radare2 / Frida"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.0/dae-macOS-arm64"
      sha256 "f501b266a98d18a1f0240d81debfe175f4a23c8f4c8b6015e76d07614fda4665"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.0/dae-macOS-x64"
      sha256 "7fc168d9bc3ee367520c14232c54704444fd259866cb9df549cf5cd04c4c8773"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.0/dae-Linux-arm64"
      sha256 "494fed8f2c48c2036b70702e97ee7f5648f4ad995d3f892e17016104924f16e0"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.0/dae-Linux-x64"
      sha256 "030abd4c967926d51a3f9390e6ab76d1e766769071326c9dc05c41bca3de6a7c"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
