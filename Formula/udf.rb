class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.3/udf_v0.7.3_darwin_arm64.tar.gz"
      sha256 "35e22107929bbc4dfefdabfd4d16ddb457fc95d2d603f46f38b4798aa0a64e35"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.3/udf_v0.7.3_darwin_amd64.tar.gz"
      sha256 "13ec754a3030036fd565fa813e667e1aaddfb9b034ebba255873805ce554650b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.3/udf_v0.7.3_linux_arm64.tar.gz"
      sha256 "4aed46c091e03b35b0d16567f574e7b005a60140e20b349067c78a5a62a32824"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.3/udf_v0.7.3_linux_amd64.tar.gz"
      sha256 "d84547af59fa9441637f737df8ae197e18a960792c3c4c0ef0b0a66fb46df122"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
