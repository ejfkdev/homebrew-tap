class Jscd < Formula
  desc "JavaScript .jsc (V8 code cache) decompiler written in Rust (Node 8.0-26.10, V8 5.8-14.6)"
  homepage "https://github.com/ejfkdev/jscd"
  version "0.2.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.2.2/jscd-v0.2.2-macos-arm64"
      sha256 "ba50f84499e7453531cc24e925b36a31594d3bc641b61acb633f268cbd808212"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.2.2/jscd-v0.2.2-macos-amd64"
      sha256 "43164a80d98244ee6a940139b76f92319bee589ef21fa75918fe4883fbe8bc83"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.2.2/jscd-v0.2.2-linux-arm64"
      sha256 "53dc8bc9568ba89623492e47015c77914e55e4b220d86eb6b1e4cc870691cfc0"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.2.2/jscd-v0.2.2-linux-amd64"
      sha256 "db7fe4108ee803471638e9a437cca8a2b0a4a182e09233f9f0971cfac33a097a"
    end
  end

  def install
    bin.install Dir["jscd-*"].first => "jscd"
  end

  test do
    system "#{bin}/jscd", "--help"
  end
end
