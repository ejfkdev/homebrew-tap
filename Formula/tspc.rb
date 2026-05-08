class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.4.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.4.1/tspc-x86_64-apple-darwin"
      sha256 "7cbf4651083986acac4a3d5bd3091ab78cec536e8605e61cea2471c3575b2c20"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.1.0/tspc-x86_64-apple-darwin"
      sha256 "70277ce405e3f2b3ebd87b7c209f5a3c00fa82e4357ee7a41b6bf167249a7c3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.4.1/tspc-x86_64-unknown-linux-gnu"
      sha256 "7a79e8dc65c81d02ca10649e848bfcc5c2026e96ffd7135790e47c93c4a4831e"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.1.0/tspc-x86_64-unknown-linux-gnu"
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
