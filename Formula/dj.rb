class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.2/dj-darwin-arm64"
      sha256 "5f861c41c0934d342ec4f9d0be2a227f2be1a852eda5cec49cd6f18bd787e0ad"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.2/dj-darwin-amd64"
      sha256 "3b6a09411f1446f46bd8961f4d885d51c6e05cadd4d64ac8726590e08ad8f8b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.2/dj-linux-arm64"
      sha256 "b6d9817231d8eda002562d090c5f190266446849c404c299dd3eef0d030471a9"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.2/dj-linux-amd64"
      sha256 "d3eef6ba474b54e892d5a7b37022abd7fda748f20993fc04822bd79bebd00bb9"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
