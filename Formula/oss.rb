class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.3/oss-0.1.3-darwin-arm64.tar.gz"
      sha256 "MISSING"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.3/oss-0.1.3-darwin-amd64.tar.gz"
      sha256 "MISSING"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.3/oss-0.1.3-linux-arm64.tar.gz"
      sha256 "MISSING"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.3/oss-0.1.3-linux-amd64.tar.gz"
      sha256 "MISSING"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
