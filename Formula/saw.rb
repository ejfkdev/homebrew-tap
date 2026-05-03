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
        sha256 "80b66782142b875aa145dbfbec696141ae33cac697a32cb5be1a58ec0758ffd5"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-shell-macos-arm64"
        sha256 "2dd5bb0744261f5f7135b83c13da64c9e3250bbc134657887c739a74f1cd425f"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-client-macos-x86_64"
      sha256 "930e74cae34f553ecc8e4f7a0ab57d483ef2de69b90472eb6d0ea807b5874e79"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-server-macos-x86_64"
        sha256 "2d80f19766c812d0a3f31c059926ed8c15329c6387cee70c849ee9ca636ebbdb"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-shell-macos-x86_64"
        sha256 "6a6c521f306d415343c7624fec7407792755c1fd621402a4593df9b4c135ede3"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-client-linux-arm64"
      sha256 "d9a02cb1748b2a49c7426d3c0f7d0c78fc207b087fa5002a54e34cc7725878f2"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-server-linux-arm64"
        sha256 "233f328dc8a929e515e6375c880b432a7f127a65d57acce418d0d76aee4cbdd0"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-shell-linux-arm64"
        sha256 "fcac08551adf274b118ecf10cab77d8e45bfe298f3008157810f20a88663cc4f"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-client-linux-x86_64"
      sha256 "b90906efb5d177fc8083ae06e6b0877dbc8968f453d7917d4218349993cba53f"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-server-linux-x86_64"
        sha256 "d94c5e9d59cf1862ead7cfcbd5242f1ca3cfb2d1c08af0521091955f34813589"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.1.0/saw-shell-linux-x86_64"
        sha256 "2b7a3582cd7b1ef1fe37feb2384296c1c3eff52731b0cf95440e341008e84edc"
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
