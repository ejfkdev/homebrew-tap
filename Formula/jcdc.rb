class Jcdc < Formula
  desc "Java class file decompiler written in Rust (Java 1.1-26, class version 45-70)"
  homepage "https://github.com/ejfkdev/jcdc"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.3/jcdc-v0.1.3-macos-arm64"
      sha256 "b5e679e894045ef26bca483fe836c16a978e735773eb598134b69fd255d3ce6b"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.3/jcdc-v0.1.3-macos-amd64"
      sha256 "0965b775ac33fa03e116ac1bc7bf4d064870760465e2f82d777d6000b6312d87"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.3/jcdc-v0.1.3-linux-arm64"
      sha256 "b030efeb47ef5bfe97b4c9990247e7d7b121d22a97242059a9baf72c2fe6772c"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.3/jcdc-v0.1.3-linux-amd64"
      sha256 "69206099b070a4acb8bc3b79f751a92676e4578b9a778678b32ef75802874ff1"
    end
  end

  def install
    bin.install Dir["jcdc-*"].first => "jcdc"
  end

  test do
    system "#{bin}/jcdc", "--help"
  end
end
