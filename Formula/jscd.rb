class Jscd < Formula
  desc "JavaScript .jsc (V8 code cache) decompiler written in Rust (Node 8.0-26.10, V8 5.8-14.6)"
  homepage "https://github.com/ejfkdev/jscd"
  version "0.3.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.1/jscd-v0.3.1-macos-arm64"
      sha256 "e83a181ec52164acaf63487118b5a461a6854d9f0463f6f59dfd2106f050c8c3"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.1/jscd-v0.3.1-macos-amd64"
      sha256 "07a6d1caeed4bb76b479b428f030d53dd2dd28012f7d805f004203ec92b300f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.1/jscd-v0.3.1-linux-arm64"
      sha256 "ad8d702c8f862c55bd8c121c95785f6fb50d2fce67705fb9be5ee7a2fea32c7a"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.1/jscd-v0.3.1-linux-amd64"
      sha256 "3158d369f3221dea1af15f5af0deee6bb6b365ef256928cb03cb78153166651b"
    end
  end

  def install
    bin.install Dir["jscd-*"].first => "jscd"
  end

  test do
    system "#{bin}/jscd", "--help"
  end
end
