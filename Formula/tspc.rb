class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.0/tspc-aarch64-apple-darwin"
      sha256 "d6caeea183746198f974a4e23912da45c32c3bdc2cf2330f6ef20f62700a3e9d"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.0/tspc-x86_64-apple-darwin"
      sha256 "797e7df627a104c57d678133693c55a0b4e6096e7a285562ac5eed990a31565f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.0/tspc-aarch64-unknown-linux-gnu"
      sha256 "05c35ae43208a52369e6ed8400b9a30a0155fac9a95f14f0ef03e9ea6a3d03e2"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.0/tspc-x86_64-unknown-linux-gnu"
      sha256 "05360075d0a34c46b3c516a93f0301361f6d6e74f501d15f335b1b06ed941be7"
    end
  end

  def install
    bin.install Dir["tspc-*"].first => "tspc"
  end

  test do
    system "#{bin}/tspc", "--help"
  end
end
