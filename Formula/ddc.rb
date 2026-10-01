class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.22"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.22/ddc-v0.1.22-aarch64-apple-darwin"
      sha256 "1b1ec98a79a196e3060e7dcbd8bffb03af9fb8b38db94fd9c9c730a9801674b4"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.22/ddc-v0.1.22-x86_64-apple-darwin"
      sha256 "e4cd80328aadd19c86f17fe1fbe0ef6c3981a91151523528b5a8a32f804733e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.22/ddc-v0.1.22-aarch64-unknown-linux-gnu"
      sha256 "eb3f1fed057e9bd1555545021619ce2cd947bb5344e3318cdb25c6652ad4a420"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.22/ddc-v0.1.22-x86_64-unknown-linux-gnu"
      sha256 "2af03238370d4c04c964ecf885616623b31dc52bcab6262a5d8a3f59c610f98e"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
