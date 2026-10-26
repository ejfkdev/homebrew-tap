class Jscd < Formula
  desc "JavaScript .jsc (V8 code cache) decompiler written in Rust (Node 8.0-26.10, V8 5.8-14.6)"
  homepage "https://github.com/ejfkdev/jscd"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.0/jscd-v0.3.0-macos-arm64"
      sha256 "821499211504a7075848ab53d34723ea648547e44ce377394392fdcf75bce67e"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.0/jscd-v0.3.0-macos-amd64"
      sha256 "87f07893c8976315259ca64ddbcfe012dad6dcc62ef8c7fef10d71c485431c0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.0/jscd-v0.3.0-linux-arm64"
      sha256 "deed5cc319dbf13402b9f42f0ceb31b217bff114bda0c4362ab15093e5e2568a"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.0/jscd-v0.3.0-linux-amd64"
      sha256 "f70cb8b5867480665db39ac5c14a780efb595eb960603b1dabe3f31ada7d07ab"
    end
  end

  def install
    bin.install Dir["jscd-*"].first => "jscd"
  end

  test do
    system "#{bin}/jscd", "--help"
  end
end
