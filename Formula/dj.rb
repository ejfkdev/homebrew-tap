class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.8"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.8/dj-darwin-arm64"
      sha256 "0e88174795a508a7d075fe8ecce0931db2a91965d054cf6cbcc20e281be075db"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.8/dj-darwin-amd64"
      sha256 "65399703712c3d417b1ff7559c5d1746762321ec55886b5ad7e2bc02b5304f17"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.8/dj-linux-arm64"
      sha256 "5f222484d738951204b5193c7c910a2a85d33cdb2e400c71011ce539d5f050b7"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.8/dj-linux-amd64"
      sha256 "05f9d03f30be835995784ed5f83d6f7e841a151f65eb9c39ef418604991bb363"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
