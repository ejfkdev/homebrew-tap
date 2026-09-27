class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.16"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.16/ddc-v0.1.16-aarch64-apple-darwin"
      sha256 "efaaeebfa23ad8fa4228bfafa15248e217861b5a279c694e24af559fe100717f"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.16/ddc-v0.1.16-x86_64-apple-darwin"
      sha256 "807c12ce313852da79483513210da6996d1419f3bdb0eca1e09a300d177b56b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.16/ddc-v0.1.16-aarch64-unknown-linux-gnu"
      sha256 "12d87355df496a4c326b68e4e5a90582f4d9fec252989d10c15828c9579a57d3"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.16/ddc-v0.1.16-x86_64-unknown-linux-gnu"
      sha256 "089089f3e0232f13af24184f3e6890bbabb531fae14dcbc435f5db7130653298"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
