class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.5.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.3/tspc-aarch64-apple-darwin"
      sha256 "d042cecfb7a5b2bbd174f4a3ddba8c9308229b85fc521b29c650bc952a7fcca0"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.3/tspc-x86_64-apple-darwin"
      sha256 "a3e6b63957b4afa510ce30bdbe27d4f4fd8e607b23ca195fc5d925fbd78f836d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.3/tspc-aarch64-unknown-linux-gnu"
      sha256 "a273055ab322b214d729f8cca46fe0359acb9ba9267e81dc354ed313791838ae"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.3/tspc-x86_64-unknown-linux-gnu"
      sha256 "70dbbd1b50b5024a4fcabb48a3e3da8ae234919aafe0d6c33b15a6446afd11b2"
    end
  end

  def install
    bin.install Dir["tspc-*"].first => "tspc"
  end

  test do
    system "#{bin}/tspc", "--help"
  end
end
