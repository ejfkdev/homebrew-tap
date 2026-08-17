class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.5/oss-v0.1.5-darwin-arm64.tar.gz"
      sha256 "64e3f4c6ad51ea4ff661ea31ac044d1bea6308398a4ea4e8f1ff9de2fb043030"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.5/oss-v0.1.5-darwin-amd64.tar.gz"
      sha256 "df0a7f43f96c9edae3420defd9dfec8f7e0a2fdd5cacac4032ecb44c0c61d2fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.5/oss-v0.1.5-linux-arm64.tar.gz"
      sha256 "f1ca75fc6f82e407e5911a5c3e1e9679ee74b5a0e40ff32da51f589d538fbc1d"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.5/oss-v0.1.5-linux-amd64.tar.gz"
      sha256 "65f40abe7d5baa0d6b2d689d2208c6eb1e0a27afcc0e640a957db034d0c533ec"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
