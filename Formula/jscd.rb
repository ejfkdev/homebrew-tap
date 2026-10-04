class Jscd < Formula
  desc "JavaScript .jsc (V8 code cache) decompiler written in Rust (Node 8.0-26.10, V8 5.8-14.6)"
  homepage "https://github.com/ejfkdev/jscd"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.1.0/jscd-v0.1.0-macos-arm64"
      sha256 "33ff52501158c5f6412098b325189c1e7eec3b9eb7b57e1c779c6de61bdfae7c"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.1.0/jscd-v0.1.0-macos-amd64"
      sha256 "5b2bfb704361cd6cf406926a2ff352bdbccb0ae987c17835758e61f3bbf13893"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.1.0/jscd-v0.1.0-linux-arm64"
      sha256 "141e62b619bcc7daf572a172b8bef6465bc750095d6c9e407cf309e301950598"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.1.0/jscd-v0.1.0-linux-amd64"
      sha256 "e6473e29b46f54e311af1ead426ed8bf7ce6bdfd385cfc19a3a47f00e9b56343"
    end
  end

  def install
    bin.install Dir["jscd-*"].first => "jscd"
  end

  test do
    system "#{bin}/jscd", "--help"
  end
end
