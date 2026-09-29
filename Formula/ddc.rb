class Ddc < Formula
  desc "DEX to Java decompiler written in Rust"
  homepage "https://github.com/ejfkdev/ddc"
  version "0.1.19"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.19/ddc-v0.1.19-aarch64-apple-darwin"
      sha256 "b2b59b097218cfbda573774263841979279957749d85bd504eb4e6307674e499"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.19/ddc-v0.1.19-x86_64-apple-darwin"
      sha256 "7e6747110dd6ba952cbd20832fe851df4c2d5fe1c5f9939cbb9d9c320c0167b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.19/ddc-v0.1.19-aarch64-unknown-linux-gnu"
      sha256 "c68f87e435450287dacd520147707379d9005b9c679993f237bfd08636604d15"
    end
    on_intel do
      url "https://github.com/ejfkdev/ddc/releases/download/v0.1.19/ddc-v0.1.19-x86_64-unknown-linux-gnu"
      sha256 "b3ec4f113f3bbbe89346be326e93ad498c93f000b849ddd421ad3b515673d04b"
    end
  end

  def install
    bin.install Dir["ddc-*"].first => "ddc"
  end

  test do
    system "#{bin}/ddc", "--help"
  end
end
