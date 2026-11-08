class Jcdc < Formula
  desc "Java class file decompiler written in Rust (Java 1.1-26, class version 45-70)"
  homepage "https://github.com/ejfkdev/jcdc"
  version "0.1.5"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.5/jcdc-v0.1.5-macos-arm64"
      sha256 "645056593ba13be4e722f6c8fe12e4bbe41d2b96c9c2a078af294531e748eec8"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.5/jcdc-v0.1.5-macos-amd64"
      sha256 "1b973f6c9b19d09c32b4b0d6267e8ea394858f61fad2dbf36bfc045f00b3a58e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.5/jcdc-v0.1.5-linux-arm64"
      sha256 "ef982f0367f39c6e3fdc7bdeae9e22c191a7fa5556afe55223b889c4496372d3"
    end
    on_intel do
      url "https://github.com/ejfkdev/jcdc/releases/download/v0.1.5/jcdc-v0.1.5-linux-amd64"
      sha256 "fa7d58e4770b97f8cdad083a48f95fb2df1d8dc48cbadcfa44016a2cd1c7acf0"
    end
  end

  def install
    bin.install Dir["jcdc-*"].first => "jcdc"
  end

  test do
    system "#{bin}/jcdc", "--help"
  end
end
