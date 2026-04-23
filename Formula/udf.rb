class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.1.0/udf_v0.1.0_darwin_arm64.tar.gz"
      sha256 "b57d348b2636d52786e232c77d2796763c47641c3bd1c278dd454d14c1ac8350"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.1.0/udf_v0.1.0_darwin_amd64.tar.gz"
      sha256 "048722c6b7fb8e27a854c2192054b8c8c7f566c0489c5c37966a726111a7403b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.1.0/udf_v0.1.0_linux_arm64.tar.gz"
      sha256 "fb309b9da5c3a857859dcc73e495627b62cc61c34a40811c588e3ff76c115f83"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.1.0/udf_v0.1.0_linux_amd64.tar.gz"
      sha256 "9ede9ca09e32b055335395333ffc3c3db5add8b1e6dc83de3697ecd7380d1b39"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
