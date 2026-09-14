class Jcdc < Formula
  desc "Java class file decompiler written in Rust (Java 1.1-26, class version 45-70)"
  homepage "https://github.com/ejfkdev/jcdc"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.1/jcdc-v0.1.1-macos-arm64"
      sha256 "27e37b2336453ce8a686628be657d3e29820badcc13c80849cdfa8ed9afce63a"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.1/jcdc-v0.1.1-macos-amd64"
      sha256 "028e33475910f7bf9596212feba3cfb6308afe1392603ff71dddcb5943bec086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.1/jcdc-v0.1.1-linux-arm64"
      sha256 "0da994fa1cb1ddcd8b41940cc79bfb74abcf770c6934db3bb3655e80519614db"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.1/jcdc-v0.1.1-linux-amd64"
      sha256 "73b235cf9212f4d8ad6a22771b8c4444bc93dfb51c56d4b9656d2ee4127e8943"
    end
  end

  def install
    bin.install Dir["jcdc-*"].first => "jcdc"
  end

  test do
    system "#{bin}/jcdc", "--help"
  end
end
