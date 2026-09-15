class Avdroot < Formula
  desc "Root an Android Studio emulator by patching its ramdisk with Magisk, in pure Go"
  homepage "https://github.com/ejfkdev/avdroot"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/avdroot/releases/download/v0.1.1/avdroot_darwin_arm64"
      sha256 "238e7cb5c28732967c0309c7e72d84cc59f821e2e34d72772662fdbd92b340e2"
    end
    on_intel do
      url "https://github.com/ejfkdev/avdroot/releases/download/v0.1.1/avdroot_darwin_amd64"
      sha256 "b246305fddfe4f86e382b34267de77ba4fedaddbfc33b89661612ddc09eeaae8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/avdroot/releases/download/v0.1.1/avdroot_linux_arm64"
      sha256 "090d1b2d6e50e5ef0885373ba7da21ef4f871d5cc10078238b52986f89174b60"
    end
    on_intel do
      url "https://github.com/ejfkdev/avdroot/releases/download/v0.1.1/avdroot_linux_amd64"
      sha256 "b101fe8ae9e99c82191a3327215b155b49b9ab94ea7bebf4b602ac76a6893627"
    end
  end

  def install
    bin.install Dir["avdroot_*"].first => "avdroot"
  end

  test do
    system "#{bin}/avdroot", "--help"
  end
end
