class Saw < Formula
  desc "ShellAnyWhere - shell, client and server CLI tools"
  homepage "https://github.com/ejfkdev/ShellAnyWhere"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-client-macos-arm64"
      sha256 "37c3f90515d2328eeb8aa80609100092b213ab52f4d098d957717485013a7d7a"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-server-macos-arm64"
        sha256 "560066479d0c496f3b16f3845c0facf490c6e37b9ae2d172df7ad636a8825c8c"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-shell-macos-arm64"
        sha256 "d8857c7d6067e65bad4334ca58bdc1c0d307fcc8edbbcecea3bcb245002e9ed0"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-client-macos-x86_64"
      sha256 "930e74cae34f553ecc8e4f7a0ab57d483ef2de69b90472eb6d0ea807b5874e79"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-server-macos-x86_64"
        sha256 "83b57ca74867a322c7124ecc7bc6831d5d35c45c81254c361a74e77be56187a1"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-shell-macos-x86_64"
        sha256 "841619ad8e02c2db518faadbfdb683512e1ecd620d06708fb0d78d1d42066bc3"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-client-linux-arm64"
      sha256 "d9a02cb1748b2a49c7426d3c0f7d0c78fc207b087fa5002a54e34cc7725878f2"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-server-linux-arm64"
        sha256 "93b4fa5a5f6821a740318822ce8e160411f8619392d6cf8cc32d475aa465c998"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-shell-linux-arm64"
        sha256 "8ac2cb542050a0448199f1321dd0c6aced483a5c4e857c2fefc82857c7ad6a93"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-client-linux-x86_64"
      sha256 "b90906efb5d177fc8083ae06e6b0877dbc8968f453d7917d4218349993cba53f"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-server-linux-x86_64"
        sha256 "15819d5c337d38a4ffef532229ecf5c0253ad94ca8f3ab6943bef1c11b4f23e6"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-shell-linux-x86_64"
        sha256 "dc1db91137b55bf43c72fe5d6d1b72a1c35a5dbba8d21d33176bc1b44e56a36a"
      end
    end
  end

  def install
    bin.install Dir["saw-client-*"].first => "saw-client"
    resource("server").stage { bin.install Dir["saw-server-*"].first => "saw-server" }
    resource("shell").stage { bin.install Dir["saw-shell-*"].first => "saw-shell" }
  end

  test do
    system "#{bin}/saw-client", "--help"
    system "#{bin}/saw-server", "--help"
    system "#{bin}/saw-shell", "--help"
  end
end
