class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.9"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.9/udf_v0.7.9_darwin_arm64.tar.gz"
      sha256 "a50f75aec4c52d87f8248a0959ad6241de2b6195e37cf78d3c8619362349b06b"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.9/udf_v0.7.9_darwin_amd64.tar.gz"
      sha256 "f2a3760ecd33dafa9c43382c5849ce2a1144bae2e91dac114abdd86338c5ac69"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.9/udf_v0.7.9_linux_arm64.tar.gz"
      sha256 "cf0a53997d37420c9c26b2def83e0b5122f08fbc37fcda356e629e78f7b54034"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.9/udf_v0.7.9_linux_amd64.tar.gz"
      sha256 "89023800f52e44dd9910c483f9b15e1df10eafb1e4abee7ca67fa056f5fe4a47"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
