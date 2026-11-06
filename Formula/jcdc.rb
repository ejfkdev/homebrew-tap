class Jcdc < Formula
  desc "Java class file decompiler written in Rust (Java 1.1-26, class version 45-70)"
  homepage "https://github.com/ejfkdev/jcdc"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.4/jcdc-v0.1.4-macos-arm64"
      sha256 "271a8816a6dead0e3131ac563bb7377a7e9f16a747ef15af5b219a43336c2685"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.4/jcdc-v0.1.4-macos-amd64"
      sha256 "45ca66e2091d0a104698a569a88120305ce998ebe63dc7690343cd196007236e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.4/jcdc-v0.1.4-linux-arm64"
      sha256 "a3672f54b5605e2f635ff3e70b993e68ad4bbff022ef24fa3c004a3d6c72553c"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.4/jcdc-v0.1.4-linux-amd64"
      sha256 "9557c389ab858aca1bcf2574fd54231674c66e6ea5f448f3cf4e9e139ca8e5a1"
    end
  end

  def install
    bin.install Dir["jcdc-*"].first => "jcdc"
  end

  test do
    system "#{bin}/jcdc", "--help"
  end
end
