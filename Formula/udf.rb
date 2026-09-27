class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.2/udf_v0.7.2_darwin_arm64.tar.gz"
      sha256 "94842808cd6a612f23edb69759b70bca8d3b918d42457d60f79f9beeb798a6aa"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.2/udf_v0.7.2_darwin_amd64.tar.gz"
      sha256 "ca21ed0ca2512bc360ea1784837e379c78223ce4591f27d98c360c26dbc04ac6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.2/udf_v0.7.2_linux_arm64.tar.gz"
      sha256 "b96282f6b87a0f262fa160ee4627719a5264387e500cfc0d1ca2b3fb22a10402"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.2/udf_v0.7.2_linux_amd64.tar.gz"
      sha256 "240a354ef2611c69747d93da3aa1600eb53221ef1dfb84e7e168363e61d659ef"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
