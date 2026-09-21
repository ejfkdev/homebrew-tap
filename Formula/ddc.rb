class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.8/ddc-v0.1.8-aarch64-apple-darwin"
      sha256 "2a89c25e94eb8a0bfcc7519eb71924a0a05dc897aac463c787a10565ac2e8a04"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.8/ddc-v0.1.8-x86_64-apple-darwin"
      sha256 "8d877a4c893537672696aef78e655d2805e21f0b90a00c0882164a3c390e9244"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.8/ddc-v0.1.8-aarch64-unknown-linux-gnu"
      sha256 "ec72975fe86642d42d1f3e966797594aad62908b684e7fc1594159ac970d9d4b"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.8/ddc-v0.1.8-x86_64-unknown-linux-gnu"
      sha256 "64c76b8e0a109fadcb0217ca3c7b001344b93fbf37247166ccf10c423ad3404a"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
