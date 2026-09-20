class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.6/ddc-v0.1.6-aarch64-apple-darwin"
      sha256 "3b780453d27669eab46810816c9547d180d1fa6009a8c2e991c07f8bcf9ebb3d"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.6/ddc-v0.1.6-x86_64-apple-darwin"
      sha256 "9147c367b25026aacd887dafed6f14c485651f163210ff17bbc414bb1eed9d22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.6/ddc-v0.1.6-aarch64-unknown-linux-gnu"
      sha256 "2ff08cb9d5b79c70b1d4f3cc99fee9417655747a65d65a3bff207d0a2b5e50a6"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.6/ddc-v0.1.6-x86_64-unknown-linux-gnu"
      sha256 "6e3ad31f682529c7555f5326af9b596d5d0ec632e47d9f179484892bd8fa8661"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
