class Ov < Formula
  desc "Download URL version prober: auto-detect the version in a download link and probe every version combination"
  homepage "https://github.com/ejfkdev/ov"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.3/ov-darwin-arm64"
      sha256 "25df3facf9131ba08d9d699820f371c37144fcb8534c739c28f0d99eebccdd3a"
    end
    on_intel do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.3/ov-darwin-amd64"
      sha256 "265b8256f7b296a31c04fd1d7218c929f2400a3e3de89b2e1c56ced5a409de67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.3/ov-linux-arm64"
      sha256 "121f8c7ea8ce94e61e55ba5c4be6a27be11b71d96aa9c7e9d0f4c72e45a0ae11"
    end
    on_intel do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.3/ov-linux-amd64"
      sha256 "0d9a51f0dd40063714a7d901f786baf12aac95020fbec711fd62db8c9c6d4fe5"
    end
  end

  def install
    bin.install Dir["ov-*"].first => "ov"
  end

  test do
    system "#{bin}/ov", "--help"
  end
end
