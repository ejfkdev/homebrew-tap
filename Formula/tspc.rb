class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.5.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.2/tspc-aarch64-apple-darwin"
      sha256 "21ab8457dddb7f9f95555f11e8580ce066f4fd7c426771935aec31fc3a85460a"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.2/tspc-x86_64-apple-darwin"
      sha256 "ba7b36bc6dae49a042099c805089e0a9868899b20ebd03e10079e5d30844773e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.2/tspc-aarch64-unknown-linux-gnu"
      sha256 "77695514997b69d5029b2b456030aa00168893b6e6ff06667e56907a92a99d1e"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.2/tspc-x86_64-unknown-linux-gnu"
      sha256 "ec73202befb825529f6315faa41b9cce50ef28229d7fe5cfa46eba9fda6ca0d3"
    end
  end

  def install
    bin.install Dir["tspc-*"].first => "tspc"
  end

  test do
    system "#{bin}/tspc", "--help"
  end
end
