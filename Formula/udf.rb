class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.5/udf_v0.7.5_darwin_arm64.tar.gz"
      sha256 "4fbf8a9549657eb6ba0a8fb4058c97c2f4c400194429aadb7d692e5f7831975f"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.5/udf_v0.7.5_darwin_amd64.tar.gz"
      sha256 "9dd0ea1b2609224c000b0288e5ebd9ea8ee76e449766e8f7e4f6728b4dd3f48c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.5/udf_v0.7.5_linux_arm64.tar.gz"
      sha256 "5a7a821b308d28344d71b5380cb5fd309a9b732690f341cfa41f006bd489ab56"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.5/udf_v0.7.5_linux_amd64.tar.gz"
      sha256 "4d24ba80ae1fc853c3b107054284764b00d03db441142f338bae73195e7f73bf"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
