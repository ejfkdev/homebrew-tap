class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.32"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.32/ddc-v0.1.32-aarch64-apple-darwin"
      sha256 "5ed5412d961548e2f82139d5774424c78e9e936884593b8b50aeec7913205790"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.32/ddc-v0.1.32-x86_64-apple-darwin"
      sha256 "0a80c033e73a6668b0073e2e5a24e7a45333c0b8b5446f6cebf680a7d1fcba2a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.32/ddc-v0.1.32-aarch64-unknown-linux-gnu"
      sha256 "e8cff63ff270c06290513649cc82c033f8525356cfa45f1512ad70ff7ec1d0d7"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.32/ddc-v0.1.32-x86_64-unknown-linux-gnu"
      sha256 "fd3914bd17dfb713fda2cd088c384bda035a012dff94fec7d68c89f4d91735d0"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
