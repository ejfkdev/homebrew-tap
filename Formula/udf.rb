class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.2.0/udf_v0.2.0_darwin_arm64.tar.gz"
      sha256 "a4f31c6334d04b37856183e45af9cdbf52a84456aa7345badb097783fd679590"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.2.0/udf_v0.2.0_darwin_amd64.tar.gz"
      sha256 "568ceadc1c58a593e53b9dfee90f9a0ffad8cabf134586fdf99d9ca1014b3507"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.2.0/udf_v0.2.0_linux_arm64.tar.gz"
      sha256 "76ab23c4fac8f9a3b47b3bdd6655b49c676c18965aaf5e7ffd8fcf2ccaa1b664"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.2.0/udf_v0.2.0_linux_amd64.tar.gz"
      sha256 "716cc160e53da49621e175819ad1aca2eb080972557b9a43a6638279a779fe9b"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
