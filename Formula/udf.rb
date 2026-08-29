class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.4.0/udf_v0.4.0_darwin_arm64.tar.gz"
      sha256 "c2452beecd1c3618eeb7735c80434426c5f4610596137d601da75f54ede296ed"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.4.0/udf_v0.4.0_darwin_amd64.tar.gz"
      sha256 "051fb99a4a532d330076e91cd1c121fd90f7d121f12025822a37a7cf97dc4d71"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.4.0/udf_v0.4.0_linux_arm64.tar.gz"
      sha256 "c479b63448c0d8353d67974ae2fb799b016232bea950457e8c4654fb3df08652"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.4.0/udf_v0.4.0_linux_amd64.tar.gz"
      sha256 "d311b804c3772284c2b7db616b4f8245ad0dfff8d9396f485071753eed32456e"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
