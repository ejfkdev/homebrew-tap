class Udf < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/udf"
  version "0.7.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.1/udf_v0.7.1_darwin_arm64.tar.gz"
      sha256 "badfd3020c26542ebdfddad7f7cea1ac78db9c50aa3c34d6c2da3fe38c310d49"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.1/udf_v0.7.1_darwin_amd64.tar.gz"
      sha256 "6884a8cd66afe2d4b775be9d83ed3d6e263f277f096e14f6421f8a6add998a7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.1/udf_v0.7.1_linux_arm64.tar.gz"
      sha256 "36ffad279f4fb796ac5c7180648867437b87095be5e0d32c9573357a57f7e58d"
    end
    on_intel do
      url "https://github.com/ejfkdev/udf/releases/download/v0.7.1/udf_v0.7.1_linux_amd64.tar.gz"
      sha256 "bd700ec21c92ddd8f9833242450ed1ebcb3b5545453eefe1c93627c30cd7d718"
    end
  end

  def install
    bin.install "udf"
  end

  test do
    system "#{bin}/udf", "--help"
  end
end
