class Ov < Formula
  desc "Download URL version prober: auto-detect the version in a download link and probe every version combination"
  homepage "https://github.com/ejfkdev/ov"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.2/ov-darwin-arm64"
      sha256 "d955c9875c1459eb0be81cf9d1af7482f46d393d4273430109ae3099defc35f6"
    end
    on_intel do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.2/ov-darwin-amd64"
      sha256 "ffd9fd9d0aced7d7a56d9e91b9f455e2c2a670b0a851e00ed237a9082a9c3ec2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.2/ov-linux-arm64"
      sha256 "bc71d29fee8ad0cce6f40db610a2a9c095eb2dd6ef9b15045d1269fd6b733af3"
    end
    on_intel do
      url "https://github.com/ejfkdev/ov/releases/download/v0.1.2/ov-linux-amd64"
      sha256 "55e559b60c3d5583ff7713cf905cb2c21e58128468b02f00c87a6ee0989692f0"
    end
  end

  def install
    bin.install Dir["ov-*"].first => "ov"
  end

  test do
    system "#{bin}/ov", "--help"
  end
end
