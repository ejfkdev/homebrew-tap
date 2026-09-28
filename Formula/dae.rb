class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.10"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.10/dae-macOS-arm64"
      sha256 "baffc08d33eb915704f46029b9f0bfd3d87737297426a26281196c14d12727c7"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.10/dae-macOS-x64"
      sha256 "86b69608caee748cbea1f36b2df18842f69fc51246b28fa43ee1bc016cc1473a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.10/dae-Linux-arm64"
      sha256 "9ef9b6de84f9808cd7c44dc40efb6893624e843ca3bf31302a021e7fc545639e"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.10/dae-Linux-x64"
      sha256 "6ec5dcf559ff77206e141725623da92794714376aa3ea8ee9e4ba9e9cf7de57e"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
