class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.2.1/udf_v0.2.1_darwin_arm64.tar.gz"
      sha256 "eafa1496b094da45f5ce5ddf3fb354af6fd3211b501fd59b4ebe9dd7ff14395e"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.2.1/udf_v0.2.1_darwin_amd64.tar.gz"
      sha256 "aa2335acad008f8c4b27748c551882a3d58ec23e7d2bc1d02046840b89c5ee52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.2.1/udf_v0.2.1_linux_arm64.tar.gz"
      sha256 "4d5a72a9ca5c065a06599a231d435f657529d794d44bce73f517a4f7c2b2aa9e"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.2.1/udf_v0.2.1_linux_amd64.tar.gz"
      sha256 "4455c064cbb66f7188f7d4429401d987602d478c4619335bb6d369bf6cecce4b"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
