class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.20"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.20/ddc-v0.1.20-aarch64-apple-darwin"
      sha256 "9d987ec0c7b1322b34dd6b971645a31a53ea1741900972208118eff7aa958c97"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.20/ddc-v0.1.20-x86_64-apple-darwin"
      sha256 "2e87f701529c47a219ff84bef7fec97aa7335878c6160fda0afc21dcdf608035"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.20/ddc-v0.1.20-aarch64-unknown-linux-gnu"
      sha256 "a619aa05976438e3500be15f16bb01e85c7643a52ee400600ccf6453fcc44eb4"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.20/ddc-v0.1.20-x86_64-unknown-linux-gnu"
      sha256 "0896e5c9925e9d165ffe75a3d2387b3ae3c200e10fed331c2b26a3671fc3e29e"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
