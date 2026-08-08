class Oss < Formula
  desc "S3-compatible cross-cloud object storage CLI (AWS / Aliyun / Tencent / Huawei / Qiniu / GCS / R2 / MinIO ...)"
  homepage "https://github.com/ejfkdev/oss"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.2/oss-v0.1.2-darwin-arm64.tar.gz"
      sha256 "78704569905bf6cfbc44735cad76320eed3bd728287bad90dd50032cea7b306e"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.2/oss-v0.1.2-darwin-amd64.tar.gz"
      sha256 "f0af03b59c6d2c1cd8cf2a3cdf0412cf4228040fc841f1c1c01b13d213218df5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.2/oss-v0.1.2-linux-arm64.tar.gz"
      sha256 "40e0edef34da08caa7014390e1b10a346f239a4d174ca7f2f8cea82c4010173d"
    end
    on_intel do
      url "https://github.com/ejfkdev/oss/releases/download/v0.1.2/oss-v0.1.2-linux-amd64.tar.gz"
      sha256 "d31011f539fa491664ce4467d6508933d037c6d7b8e4e12091230071711a3422"
    end
  end

  def install
    bin.install Dir["oss-*"].first => "oss"
  end

  test do
    system "#{bin}/oss", "--help"
  end
end
