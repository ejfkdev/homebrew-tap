class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.5.7"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.7/tspc-aarch64-apple-darwin"
      sha256 "4f0245902d96b6e5cc27ee0b39c295d32a83ed295547d93b3d9d94284cc3aeb7"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.7/tspc-x86_64-apple-darwin"
      sha256 "f64c3e23389cd6829467525d443c2ff9cdba188e0ac8d85c60737594c346f65e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.7/tspc-aarch64-unknown-linux-gnu"
      sha256 "d4b9c717b18f160184fe9a3ab02a3c546d557cc4c691a0718dc4d797c81eb73d"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.7/tspc-x86_64-unknown-linux-gnu"
      sha256 "4e7d68649dfb1590733f7cf10c4dc9de8703dc9f99264f32fc0e22cfc63ae25c"
    end
  end

  def install
    bin.install Dir["tspc-*"].first => "tspc"
  end

  test do
    system "#{bin}/tspc", "--help"
  end
end
