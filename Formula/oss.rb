class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.2.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.5/oss-v0.2.5-darwin-arm64.tar.gz"
      sha256 "b442378053145d3e3149bfcb440b27c30246dfc0920024a22b9a851243d5798e"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.5/oss-v0.2.5-darwin-amd64.tar.gz"
      sha256 "e11faa3609f277fdffe1b046df4cfaa55360baddd05b1ff543161b7648aee4ca"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.5/oss-v0.2.5-linux-arm64.tar.gz"
      sha256 "b4c1bec6395a853af7c50888fc618b0a1de1e9a925e8b7f91a54f8a3b1840670"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.2.5/oss-v0.2.5-linux-amd64.tar.gz"
      sha256 "e105c4c55d87c9fdf338f33008f96616919398efe26691fd37b92a5debbcdc96"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
