class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.3/oss-v0.1.3-darwin-arm64.tar.gz"
      sha256 "d33bd47b278434fa046380560fd4625d2739321f1fbfda6e2fa7f3aa7d97a200"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.3/oss-v0.1.3-darwin-amd64.tar.gz"
      sha256 "b104642ac0c5930afff6c56f7ca344ca75ba460378fceda152ddf9c7e7358739"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.3/oss-v0.1.3-linux-arm64.tar.gz"
      sha256 "45b6d359dc7b2bdb3804f4977e78aaa1c77d6812f05f0a734833c5bc2013c87b"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.3/oss-v0.1.3-linux-amd64.tar.gz"
      sha256 "a2a2cc21c0e29ece32ca34be42962672495a49eeba8510ca729eaf7de91044e7"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
