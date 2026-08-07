class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.0/oss-v0.1.0-darwin-arm64.tar.gz"
      sha256 "5c8a438b64d8a0963086fbff06e0fd726378c937a1900640b8112da2182708e2"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.0/oss-v0.1.0-darwin-amd64.tar.gz"
      sha256 "6402da3188bc80ea6138de7cca0b50e02dd75fa70f50843bbd783088ea889736"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.0/oss-v0.1.0-linux-arm64.tar.gz"
      sha256 "037481f548546c5f76506bbbe98ae2cd7bf573507bcd08ee0b466e849151b3b1"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.0/oss-v0.1.0-linux-amd64.tar.gz"
      sha256 "a7d2007dcfcd2172864b9e6867a9ecca7dbc387e969f78e9321a5cc0da142ef0"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
