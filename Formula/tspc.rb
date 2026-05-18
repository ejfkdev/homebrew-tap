class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.0/tspc-x86_64-unknown-linux-gnu"
      sha256 "05360075d0a34c46b3c516a93f0301361f6d6e74f501d15f335b1b06ed941be7"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.0/tspc-aarch64-unknown-linux-gnu"
      sha256 "70277ce405e3f2b3ebd87b7c209f5a3c00fa82e4357ee7a41b6bf167249a7c3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.0/tspc-aarch64-unknown-linux-gnu"
      sha256 "7a79e8dc65c81d02ca10649e848bfcc5c2026e96ffd7135790e47c93c4a4831e"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.0/tspc-aarch64-unknown-linux-gnu"
      sha256 "587127431952fe0ecd6af0a4db538f0b16cc4c48f8839d3d28c2f86daf2f9c78"
    end
  end

  def install
    bin.install Dir["tspc-*"].first => "tspc"
  end

  test do
    system "#{bin}/tspc", "--help"
  end
end
