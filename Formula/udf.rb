class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.4"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.4/udf_v0.7.4_darwin_arm64.tar.gz"
      sha256 "6d5eecd3541acadf93a6198b57e262743028ba8d0284ee609db75519c5cd5913"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.4/udf_v0.7.4_darwin_amd64.tar.gz"
      sha256 "e95aaff3ac9617723c1d54b622db729a689550f52c47b83d50defd475348efcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.4/udf_v0.7.4_linux_arm64.tar.gz"
      sha256 "be89320c23ae5005408093ab881bad51b15926917c0a78d7baf835825e5379a5"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.4/udf_v0.7.4_linux_amd64.tar.gz"
      sha256 "7b5a970f35866af5ceeb2257ceb8bd1daaf0fc43f7bc71d1a7c5791450dfb02e"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
