class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.4/oss-v0.1.4-darwin-arm64.tar.gz"
      sha256 "9f68008ae17a6cf14b988a616f5cc93dfc50edb65430f091d17cb9ce833328e5"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.4/oss-v0.1.4-darwin-amd64.tar.gz"
      sha256 "8e1275eab0ea52accd767b1674e1c9bccaa84861ca87b031ca11cd4e8e3e24b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.4/oss-v0.1.4-linux-arm64.tar.gz"
      sha256 "f9d3cc101ac629fa3b4273eddb153c57622b4555870ad71cb116e2d369144779"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.4/oss-v0.1.4-linux-amd64.tar.gz"
      sha256 "e8c4a5f4908d618b01e8891ec718ace58e252cf718ec808be3db83f48d2b12d9"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
