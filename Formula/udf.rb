class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.6"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.6/udf_v0.7.6_darwin_arm64.tar.gz"
      sha256 "f634cb5cefb9674338745d730de021727dd4368e58156afb3a232b4dd08ca9bb"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.6/udf_v0.7.6_darwin_amd64.tar.gz"
      sha256 "7d7cfe8d16e4a07afb7c66a5bd9f53f12e3ce2f474f56d6a08f9942f93cbc379"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.6/udf_v0.7.6_linux_arm64.tar.gz"
      sha256 "de2bfd147ba5b9006bc824941fb53ba60bd4321ec7f69d6c1269d132154cb63e"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.6/udf_v0.7.6_linux_amd64.tar.gz"
      sha256 "623a7662b24d13af8e0c5902f547b90a4291556c36a03f64e23a4b9879c027b3"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
