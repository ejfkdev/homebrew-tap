class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.1/ddc-v0.1.1-aarch64-apple-darwin"
      sha256 "f8ce2a6420f90748e989566d113711274b7a53db52f3e3e0168aa4c049fc89ab"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.1/ddc-v0.1.1-x86_64-apple-darwin"
      sha256 "a52581d197fdb25fc442d76b731b5a21c5d0f6fd3ca3fd14ab38c997d80ad197"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.1/ddc-v0.1.1-aarch64-unknown-linux-gnu"
      sha256 "3fefe9ad8b034e578302b3cfe9dce69e362e2f32cdf060b8a0a8625aac6f8059"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.1/ddc-v0.1.1-x86_64-unknown-linux-gnu"
      sha256 "c372ca70de14917bc53e264f5499e3c7829f205fae744f95ff2bedb6ce172565"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
