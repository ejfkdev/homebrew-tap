class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.24"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.24/ddc-v0.1.24-aarch64-apple-darwin"
      sha256 "f0604623f01364f091b13999805b562e1fe98c7dfd781a489942a05142bda396"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.24/ddc-v0.1.24-x86_64-apple-darwin"
      sha256 "3980a723a4b7d8b9424a4d23ddb4e5a07a3e7e20e6d67b523bad72d95b85560c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.24/ddc-v0.1.24-aarch64-unknown-linux-gnu"
      sha256 "24de35702c8afc0fe2e19a826b4f83ce4b45e16677465d26d1e214395f93e892"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.24/ddc-v0.1.24-x86_64-unknown-linux-gnu"
      sha256 "2d61ff48e843b246ad338b30d678c379b6dd65766d3d97c9e8fff4f103cde5a5"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
