class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.17"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.17/dae-macOS-arm64"
      sha256 "e43af191203472d1d1877083026b13df8f7cd1d8bc2430033ac60d0cf70fc449"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.17/dae-macOS-x64"
      sha256 "30bf99a6e4226ea21ebbbe8ddc398cab320ad1f9ce2896ab89ee93b6b9632842"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.17/dae-Linux-arm64"
      sha256 "2dcb6da98bae489b81ed378000b6840924aac4177aa11568668deaf08ee9eaaa"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.17/dae-Linux-x64"
      sha256 "47253768c5be76d5dbf37d4c65e0898f38e349e7f105a086d0e62475099b5978"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
