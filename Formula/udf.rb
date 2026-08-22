class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.3.0/udf_v0.3.0_darwin_arm64.tar.gz"
      sha256 "c314fadcb6850f6f11a9443e2be68144f8de64e9a739bd76a7ed3774bd5eaf92"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.3.0/udf_v0.3.0_darwin_amd64.tar.gz"
      sha256 "1eabeff3bfb03b582abccc0b551e61ac8bb76500f4a15c8151af56a4ade6f4a0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.3.0/udf_v0.3.0_linux_arm64.tar.gz"
      sha256 "6e21bd0d689b1c7d094a25c093f6805643e2e89ff5e06e01bca0a4637812df73"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.3.0/udf_v0.3.0_linux_amd64.tar.gz"
      sha256 "c5c6de12eca0c5aa6c6ba27730777c4ef675d2a925928605a4280ea28ff983f2"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
