class Dae < Formula
  desc "Dart AOT snapshot export for reverse engineering (IDA / radare2 / Frida) with a pseudocode decompiler"
  homepage "https://github.com/ejfkdev/dae"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.12/dae-macOS-arm64"
      sha256 "6cc456078b0c57d9002f0489a225516dd0f8bd5c5ddfedb30d266859823e42a0"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.12/dae-macOS-x64"
      sha256 "ba6a74846e936fcd3ea9780d7f656c10952e09686a033f7a6fa13dc24dcfc20c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.12/dae-Linux-arm64"
      sha256 "3cf4f18658e93061e2360cec1d375b927a1eeea67ec4993176a246e3735e6e6f"
    end
    on_intel do
      url "https://github.com/ejfkdev/dae/releases/download/v0.1.12/dae-Linux-x64"
      sha256 "b32ba2d8889f0638e30b7e52d6cfec9c9249c8a8c120f0213614fe6880117d17"
    end
  end

  def install
    bin.install Dir["dae-*"].first => "dae"
  end

  test do
    system "#{bin}/dae", "--help"
  end
end
