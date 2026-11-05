class Tspc < Formula
  desc "TypeSpec compiler CLI"
  homepage "https://github.com/ejfkdev/typespec-rs"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.6.0/tspc-aarch64-apple-darwin"
      sha256 "b1d80f9fd07d8eadb867f367ede7960cbfccf0c9669db2bed92ed891767b1199"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.6.0/tspc-x86_64-apple-darwin"
      sha256 "73e19d70823aac5014b931794fd601bb7e9fe44141b6fd776aeef69e5024528e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.6.0/tspc-aarch64-unknown-linux-gnu"
      sha256 "967c20ca329efedc2b26671631d990020a714ae78a4f185fd13d87c498484323"
    end
    on_intel do
      url "https://github.com/ejfkdev/typespec-rs/releases/download/v0.6.0/tspc-x86_64-unknown-linux-gnu"
      sha256 "732aaadd73f3e9bff6b6ab0d41c84326c9dce69639f7508c24e8a0e4578afcac"
    end
  end

  def install
    bin.install Dir["tspc-*"].first => "tspc"
  end

  test do
    system "#{bin}/tspc", "--help"
  end
end
