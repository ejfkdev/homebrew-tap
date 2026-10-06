class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.8"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.8/udf_v0.7.8_darwin_arm64.tar.gz"
      sha256 "ddb69a2ce375d0b6f3e161024b7170255d7356e485847672a79ed5769922ada4"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.8/udf_v0.7.8_darwin_amd64.tar.gz"
      sha256 "f0d9e5b9f7ade6d1aacc5e55985286cd0a72f4bc0ba944b9efad44fe3f1dd9b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.8/udf_v0.7.8_linux_arm64.tar.gz"
      sha256 "260eb36d3d15644d3a0949a794ada70fd227cad5c4e65204206c0877dc6ac7a8"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.8/udf_v0.7.8_linux_amd64.tar.gz"
      sha256 "90240d853aa87859797506a47c84a0854ed7f7ac21a65233961226164a228b73"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
