class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.15"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.15/oss-v0.1.15-darwin-arm64.tar.gz"
      sha256 "a9d60743963c713f720d37cb6c6f8874c66a590410143bac0d78ea1e26507ca9"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.15/oss-v0.1.15-darwin-amd64.tar.gz"
      sha256 "5159d627ff7a3a19307c673f46ebebc5f69d5b4b578c5ca560d113ae12f48d35"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.15/oss-v0.1.15-linux-arm64.tar.gz"
      sha256 "bdde3ef10b4417490efefdcd9db93546f8c588b046e090cb1d330a0cda12aff0"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.15/oss-v0.1.15-linux-amd64.tar.gz"
      sha256 "2fd1624c5e8e1992cd1629ee42ca9f96ce1d4bb05357c6d1052dd0b5b1591844"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
