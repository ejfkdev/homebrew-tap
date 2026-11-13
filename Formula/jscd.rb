class Jscd < Formula
  desc "JavaScript .jsc (V8 code cache) decompiler written in Rust (Node 8.0-26.10, V8 5.8-14.6)"
  homepage "https://github.com/ejfkdev/jscd"
  version "0.3.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.3/jscd-v0.3.3-macos-arm64"
      sha256 "e9d602ee0567e245fbd96075589c31d6da91d66bd194448308837ff0daed32b8"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.3/jscd-v0.3.3-macos-amd64"
      sha256 "8859add297088a06f6eaa69b520d20b7f9ad1ef39962fd0850c524af416cf3ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.3/jscd-v0.3.3-linux-arm64"
      sha256 "f7d7fe9de6673fec342de297ebad971647e7d33eafe7a88cae9aa5d18c456758"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.3.3/jscd-v0.3.3-linux-amd64"
      sha256 "37a47a41c2cdef0787f7e00bf3fac38ac2a2df9bf90cbcefc0aa70b1d3695d65"
    end
  end

  def install
    bin.install Dir["jscd-*"].first => "jscd"
  end

  test do
    system "#{bin}/jscd", "--help"
  end
end
