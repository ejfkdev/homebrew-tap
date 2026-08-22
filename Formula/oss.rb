class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.2.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.3/oss-v0.2.3-darwin-arm64.tar.gz"
      sha256 "03e1fdb273b6fac5cbb52750101b33e8d2c283fa317aba02d873ac153c844b54"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.3/oss-v0.2.3-darwin-amd64.tar.gz"
      sha256 "2dea1f7813ecc7bdfc3325ccedcdc7c350f5d5b9da92b6a80946059af5334fe6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.3/oss-v0.2.3-linux-arm64.tar.gz"
      sha256 "104935fe751d93e35627eab889c60f0c93c18cf62641d3b3de4e8d822f09f4bd"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.3/oss-v0.2.3-linux-amd64.tar.gz"
      sha256 "7d1f11f85c078ea93c8a9624564b5a931f60da7e9ce82cd878159f4e94e02ba2"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
