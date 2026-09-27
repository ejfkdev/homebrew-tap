class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.0/udf_v0.7.0_darwin_arm64.tar.gz"
      sha256 "d869232474018c4a251a6224a899973afe63a8802c27138ea6ea1f312a1fd294"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.0/udf_v0.7.0_darwin_amd64.tar.gz"
      sha256 "c79b1b8046a2a864b6d040da02f6ee5bf4569bb40ed38d9f928cfa2db8697c40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.0/udf_v0.7.0_linux_arm64.tar.gz"
      sha256 "070df1161a24b77907361521e675f010e9582ab6ca5f96ce0efd6a4de19b9326"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.0/udf_v0.7.0_linux_amd64.tar.gz"
      sha256 "c61ae961bb2e590499a647dc660b0640ee995bcfa5dd18a6185beae9b353a6e9"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
