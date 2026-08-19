class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.20"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.20/dj-darwin-arm64"
      sha256 "8d1d5e3fc2b863c8ae50cb6462e34b373444e126a39d417e768081f23a5f2f1d"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.20/dj-darwin-amd64"
      sha256 "8199991796913ee629fdda893f62650a1f3a8a048d30e82a58b79fefa9a5798c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.20/dj-linux-arm64"
      sha256 "27af5abac77eb14a1c996b5b655a75025465ab6d9d3a5d77e2b8541c9310f45f"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.20/dj-linux-amd64"
      sha256 "d0271afd4185f2cd192503d48f8d56b8145680a9a03cbab032bccb99db2ab4bf"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
