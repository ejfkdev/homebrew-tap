class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.16/oss-v0.1.16-darwin-arm64.tar.gz"
      sha256 "9226c075668279d469d5494f8343b35eb874267a7c29b82ff2a241f95773e6c2"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.16/oss-v0.1.16-darwin-amd64.tar.gz"
      sha256 "d9775fd85e22b60dfdfb3835f9a65520f038ba24bbeca2d1ebb45db8242b1991"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.16/oss-v0.1.16-linux-arm64.tar.gz"
      sha256 "b8da642f0fe9beb4663778c688ea533a531b4d9157303604331604e06fdeca25"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.16/oss-v0.1.16-linux-amd64.tar.gz"
      sha256 "5a5c258b6878d5ccd8d0e30680c2b372fc9ad59f653640ca04f75cebc0440f59"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
