class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.11"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.11/ddc-v0.1.11-aarch64-apple-darwin"
      sha256 "9a863f137976bd2a6646df4dbc0c1048dd112a3621b87a0cd9f1a8b6a21c75c8"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.11/ddc-v0.1.11-x86_64-apple-darwin"
      sha256 "499601e6b1821464925b86ecfb6abc0533ee37aedfab1f51652548ada2729ed3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.11/ddc-v0.1.11-aarch64-unknown-linux-gnu"
      sha256 "2b70b5fecf34b32396aa0664a8a63aa1a83d4bc361d17f6310476beb15f62aac"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.11/ddc-v0.1.11-x86_64-unknown-linux-gnu"
      sha256 "cceceefff81cb4453bc48e44b97872c5e257c0292f460858d19690ffd8bdd9d8"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
