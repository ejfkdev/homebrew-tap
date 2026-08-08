class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.1/oss-v0.1.1-darwin-arm64.tar.gz"
      sha256 "9b2799bf182ea333e187ebf3d897798ca0be2cc2c6e9d08172764b4786b410cc"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.1/oss-v0.1.1-darwin-amd64.tar.gz"
      sha256 "f0c88b1a86b5548b32f87f2fb14c9991946ca8b8fa4eac2ec7cf01fd30bb9b88"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.1/oss-v0.1.1-linux-arm64.tar.gz"
      sha256 "ab346b8df4a235cebfbb0219d3ed945d57f9ad8836d6b7a31d97678c436c3840"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.1/oss-v0.1.1-linux-amd64.tar.gz"
      sha256 "5e6c262bdf6fda616ae0cce41e01b489f9e645872814d7191d321a3fc8a1fdc7"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
