class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.5.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.5.1/udf_v0.5.1_darwin_arm64.tar.gz"
      sha256 "b6693c502403630e4e6286171b4c1a99d1b24048b7c0b479320ad90acf92634e"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.5.1/udf_v0.5.1_darwin_amd64.tar.gz"
      sha256 "0bb994f4fca3f82046d0bcd857308062c286eb7c581a72ba7848cd21b81452ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.5.1/udf_v0.5.1_linux_arm64.tar.gz"
      sha256 "2d06122c9b95b8c1a512b3fed42e0d77fe9bea12d1072741775760bfd8953643"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.5.1/udf_v0.5.1_linux_amd64.tar.gz"
      sha256 "c86c6ab6469da87a2df4e406021d3ffb656d06aee237d17040ae33b791f3aa9d"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
