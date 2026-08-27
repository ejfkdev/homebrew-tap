class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.2.4"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.4/oss-v0.2.4-darwin-arm64.tar.gz"
      sha256 "bdbdeb0df2581f215193fdde240a3cb25c4ebd5c867c96f179cd7ba6b026b6a6"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.4/oss-v0.2.4-darwin-amd64.tar.gz"
      sha256 "56868a035f9928c14c4598aea9d4067b184617fa8cfb29af8cd988412a6bee79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.4/oss-v0.2.4-linux-arm64.tar.gz"
      sha256 "0c3baa26a3993cf80bcb6a043acf2cdf7ee44cf015d88b8b2e1bd4e8896f5a0a"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.4/oss-v0.2.4-linux-amd64.tar.gz"
      sha256 "958aae1cf1e02f1bb0ca5703df3f7ef0b80af672023e3f9d4e270cb0dc9e1170"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
