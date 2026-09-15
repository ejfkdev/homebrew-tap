class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.6.1/udf_v0.6.1_darwin_arm64.tar.gz"
      sha256 "bb2dd7c5a38d4cafa615c7401ccdd0cd299a19d3f9b35b1bb90d74cb47bf8363"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.6.1/udf_v0.6.1_darwin_amd64.tar.gz"
      sha256 "104434c613ded41fcbf9f82559a690ac1adeed10e2fea88480504e288a234ff8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.6.1/udf_v0.6.1_linux_arm64.tar.gz"
      sha256 "4171c9cda83dae3f928f455ed77f3bbf9193abcb7ef32d33ade44f6e29174e93"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.6.1/udf_v0.6.1_linux_amd64.tar.gz"
      sha256 "7b4f30edd3830a38e2670ba2b45d069b48175d59bde2c21af6004790aff15756"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
