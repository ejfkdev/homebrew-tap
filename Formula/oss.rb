class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.13"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.13/oss-v0.1.13-darwin-arm64.tar.gz"
      sha256 "e68edcfc345e16ed3f39903c4b8af4455ffb7873b7c4fbc44acf2d4b416697c2"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.13/oss-v0.1.13-darwin-amd64.tar.gz"
      sha256 "85e90c01b7badb94e2bae306428214378c39f87ed09b2b1687d8ad99f92c3f3d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.13/oss-v0.1.13-linux-arm64.tar.gz"
      sha256 "55db58a9bf560f5db85d8ae76da0c91ea5cea3df254e1931214ce712133648a3"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.13/oss-v0.1.13-linux-amd64.tar.gz"
      sha256 "fd0602e1e7c1e7825fd92dbba3e3c40589dd4ee834bbd343ac6d768cf2893039"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
