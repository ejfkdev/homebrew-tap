class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.0/dj-darwin-arm64"
      sha256 "1092c14fffccf28cf764aa97d15af71a4506b7dd9b8f61958f6248d4f30b4cf9"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.0/dj-darwin-amd64"
      sha256 "fbf57279f189696acb639df2b727fa17cd37be4da8950297cdaf86891de3ef93"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.0/dj-linux-arm64"
      sha256 "31e287e92ceb4aa7ea9c087f20643db707c8f84be4c2e4559111fa46442cb572"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.0/dj-linux-amd64"
      sha256 "891d25d2c7a2565f2f75fd0ebe633a8abeff273face919866d9969cef451b030"
    end
  end

  def install
    # Downloaded file is named after the OS/arch, rename to unified command
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
