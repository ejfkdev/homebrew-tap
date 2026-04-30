class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.1.0/tspc-aarch64-apple-darwin"
      sha256 "1392f07f952e8723f77e259258e62a61a0694c6050c8d65f6638aaa29bd9a68d"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.1.0/tspc-x86_64-apple-darwin"
      sha256 "70277ce405e3f2b3ebd87b7c209f5a3c00fa82e4357ee7a41b6bf167249a7c3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.1.0/tspc-aarch64-unknown-linux-gnu"
      sha256 "a9d2e1e5e64e6f73ae369152da194f0b571b78e5b7c395c7b6cb68f595c90cb1"
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
