class Avdroot < Formula
  desc "Root an Android Studio emulator by patching its ramdisk with Magisk, in pure Go"
  homepage "https://github.com/ejfkdev/avdroot"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/avdroot/releases/download/v0.1.0/avdroot_darwin_arm64"
      sha256 "9903cc8a43951825d2c3e00de0fa8a958393d614d2a68dfa997afec4099030f8"
    end
    on_intel do
      url "https://github.com/ejfkdev/avdroot/releases/download/v0.1.0/avdroot_darwin_amd64"
      sha256 "f41f85ecaa045a82d6d785cd57fe44b3686f66db8e680f7ca527ca0c47f1ad3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/avdroot/releases/download/v0.1.0/avdroot_linux_arm64"
      sha256 "b5091a3cc4e604798468837cdfa57b4545eecab75aadd2afc1fa879d90bc404a"
    end
    on_intel do
      url "https://github.com/ejfkdev/avdroot/releases/download/v0.1.0/avdroot_linux_amd64"
      sha256 "a785a4f76bf5523d42838c0f6f46e31df9dc8dbfdc032c4eca4948fe8c7b81ef"
    end
  end

  def install
    bin.install Dir["avdroot_*"].first => "avdroot"
  end

  test do
    system "#{bin}/avdroot", "--help"
  end
end
