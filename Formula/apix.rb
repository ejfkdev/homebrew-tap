class Apix < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/apix"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/apix/releases/download/v0.0.2/apix_0.0.2_darwin_arm64.tar.gz"
      sha256 "a295fa4b893fecea9cc7c233184f97ba2b78543256ec22ce30f5514189cf9dc0"
    end
    on_intel do
      url "https://github.com/ejfkdev/apix/releases/download/v0.0.2/apix_0.0.2_darwin_amd64.tar.gz"
      sha256 "9c31d8b0caac0dc99c1c31569e8d5c58a37e9401a045e26374400a56e0e43367"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/apix/releases/download/v0.0.2/apix_0.0.2_linux_arm64.tar.gz"
      sha256 "e05997e477020a95be6403a02858e7d844ac63c1d2fbc4dddf3701a17e314950"
    end
    on_intel do
      url "https://github.com/ejfkdev/apix/releases/download/v0.0.2/apix_0.0.2_linux_amd64.tar.gz"
      sha256 "b6a7786143660d197897085125e733b70622d4054b2713d0516ac22a0b3a48d9"
    end
  end

  def install
    bin.install "apix"
  end

  test do
    system "#{bin}/apix", "--help"
  end
end
