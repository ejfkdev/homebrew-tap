class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.9/dae-macOS-arm64"
      sha256 "43268eb424f9e2275dd095be10348bdc089be6811dfa9f58c3751e3a2c1efb53"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.9/dae-macOS-x64"
      sha256 "a0f15b89ed993702a1d63fd4ea5fb937a850fc07c1805386d8d1797755a47bf9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.9/dae-Linux-arm64"
      sha256 "03b7773c7682f7eb6b8f7c0a87067088796970022002239e65fa7004bb75d41f"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.9/dae-Linux-x64"
      sha256 "6556a426569324c35ae0cfe6b1813e879b9bd7d6e217d0765aa45ca70204e096"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
