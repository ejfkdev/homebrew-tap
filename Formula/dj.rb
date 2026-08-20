class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.5.21"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.21/dj-darwin-arm64"
      sha256 "7b2f4f36838c94a265bee0b2c6e165970b27084e4d8a934121cf9dbd8b876dc7"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.21/dj-darwin-amd64"
      sha256 "57a0e9f33b48b2d13791396bae50c9b0cf8ab6db72db98935dae83fb627989b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.21/dj-linux-arm64"
      sha256 "f9cebe995deea9c7a788358fbf236b4d1e040b173c919f022f705b66571fb4eb"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.5.21/dj-linux-amd64"
      sha256 "1ee9ca123e04b64cea55150d013f27efef4488da8ff066fd74aa9d4698619107"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
