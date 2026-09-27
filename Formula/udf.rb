class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.8.0/udf_v0.8.0_darwin_arm64.tar.gz"
      sha256 "39180394400cdccfdce14f1c80a8c97c315090687e3dc4ad4221a32b44f0894e"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.8.0/udf_v0.8.0_darwin_amd64.tar.gz"
      sha256 "bf11e2595cc8819e5ea287e6c6a070ba0d61a9f34c350251921fed08fc94b46f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.8.0/udf_v0.8.0_linux_arm64.tar.gz"
      sha256 "7a84cd4e9205520d86552b5c5acf0d4ef0424d22b2e58af7145ff1fc6557784d"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.8.0/udf_v0.8.0_linux_amd64.tar.gz"
      sha256 "2a59d08d78500e825116cb3664d56e2f23b0379c2eaef3a37f79b6efadf325e5"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
