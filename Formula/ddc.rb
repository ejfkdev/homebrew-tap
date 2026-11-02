class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.35"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.35/ddc-v0.1.35-aarch64-apple-darwin"
      sha256 "d9292e2a4eb89248bbdfedce56363a07ec72c7590238c001449f957eb2768e6d"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.35/ddc-v0.1.35-x86_64-apple-darwin"
      sha256 "753dd7fec32c7fd2e02133a0d1fbdb4fb971b7855741ee0ff19c37e3adba87bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.35/ddc-v0.1.35-aarch64-unknown-linux-gnu"
      sha256 "dbb734cf98c4b22ea166a71adc892718dba263628a346718178f483ad5d4f38d"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.35/ddc-v0.1.35-x86_64-unknown-linux-gnu"
      sha256 "81b912dcf355b3fb7c44fee8bf0510710a5dc0ce982f7abf28917bdfdf6a0f37"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
