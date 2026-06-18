class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.4.0/dj-darwin-arm64"
      sha256 "10827dd1b259f856ea942df188b26f86087ffe314da979ff1b486a37d9fff2c2"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.4.0/dj-darwin-amd64"
      sha256 "5046336feb89c62217db312df6d464b742543605eeddfe2e698bf74a4edab128"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.4.0/dj-linux-arm64"
      sha256 "fa1f12d67329804d86d2640971240e89d5d0573ff6fb0b2396df547cc9e2cbc0"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.4.0/dj-linux-amd64"
      sha256 "e735eb78d1cf4029b05d63973c6eab69d8e5b38ad8b34b31f960c86e74d3b2bf"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
