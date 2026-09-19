class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.4/ddc-v0.1.4-aarch64-apple-darwin"
      sha256 "886d131c63a62b031319a6bd6bcdf139d5771eb036c0cd338b0fa7aac8ef6050"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.4/ddc-v0.1.4-x86_64-apple-darwin"
      sha256 "bdf685cdd2fac4b1069084fd38ebd8ac1973e0d74f81e413a6d4a1dd413b0291"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.4/ddc-v0.1.4-aarch64-unknown-linux-gnu"
      sha256 "5a8e30daac7e46c25dd1dcfdb49bf4fac60c3a86d47e5a0283a5eee16554637e"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.4/ddc-v0.1.4-x86_64-unknown-linux-gnu"
      sha256 "e414dcc47675fcad54216fad651c7b15bf29279cc540acb75de8a11792a3c297"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
