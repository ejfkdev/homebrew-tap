class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.6.2/udf_v0.6.2_darwin_arm64.tar.gz"
      sha256 "21a6235bff06cb41edae55c4cd9044d56564ca8455a295faef2b60629ca87866"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.6.2/udf_v0.6.2_darwin_amd64.tar.gz"
      sha256 "3dbd3ee8c4b03c8a49d4c3acb3094bbeeee47775e61dada80c0043761fddf5ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.6.2/udf_v0.6.2_linux_arm64.tar.gz"
      sha256 "605443cf4eabbb7665e989ac7f3c1ea8109e5681e5843fbe6f16649402a87a7d"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.6.2/udf_v0.6.2_linux_amd64.tar.gz"
      sha256 "511bd110ddfca8d79ba3e1e6ceccc151249e237f7f19ecc3afb61d9d08bc299a"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
