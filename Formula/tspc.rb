class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.5.6"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.6/tspc-aarch64-apple-darwin"
      sha256 "5086dfad7566b7bcee8724f2edb1505e083d70d0c13d7b50f8a409e66e343882"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.6/tspc-x86_64-apple-darwin"
      sha256 "ca6a50fdbc7815549666aa6f087315c0c72f40df08312ab3495d8df149c0123f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.6/tspc-aarch64-unknown-linux-gnu"
      sha256 "d35b40707a6506b676aefcd541156697ff8072e8b579c639a18e51747c2633f5"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.5.6/tspc-x86_64-unknown-linux-gnu"
      sha256 "7e9032035b43dafa311de5ab032100207f29943b4fcd6e2e0fc8a9227324a4f3"
    end
  end

  def install
    bin.install Dir["tspc-*"].first => "tspc"
  end

  test do
    system "#{bin}/tspc", "--help"
  end
end
