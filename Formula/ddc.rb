class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.12"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.12/ddc-v0.1.12-aarch64-apple-darwin"
      sha256 "67afeb263105b8f774ce5023ad92f88b0eb3c4dcbba97abc184f508f7f5c69cb"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.12/ddc-v0.1.12-x86_64-apple-darwin"
      sha256 "03ce5a12ed5e22352e35ddb34575b14d4e41c273784758377f56983eb0cbb29f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.12/ddc-v0.1.12-aarch64-unknown-linux-gnu"
      sha256 "510fe8c4e026cc1e33b0ac2a98c7f5488684c56aa15351519102aaec381d3efc"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.12/ddc-v0.1.12-x86_64-unknown-linux-gnu"
      sha256 "236d38ee0bb0fce1cb606a9f30cecc0077bfd23adcc8a217a07c708d624c2b50"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
