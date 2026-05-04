class Saw < Formula
  desc "ShellAnyWhere - shell, client and server CLI tools"
  homepage "https://github.com/ejfkdev/ShellAnyWhere"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-shell-linux-x86_64"
      sha256 "5cb10c8c5c7f3eca553d4c20b0930b7c4e6e8c21c8b98fdb9837f1e812aff0b2"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-server-macos-arm64"
        sha256 "c8bac0fa93d571468fb371178042ddceafcc229c44cc2e5cfd42d07ce65c89d6"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-shell-macos-arm64"
        sha256 "e6afd7c430fdf7f2eeb39c2b02eada694bb5e6461449921eb6762deace114f67"
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
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-client-linux-arm64"
      sha256 "aa47dcd21ae3bb882b078debde51b43762f6fb62e04677c2e493a4b38efbda7b"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-server-linux-arm64"
        sha256 "5ecdc6ef205689aff779514d0f6a2d861f47ce3d7e9dde33f8bd6219a03197d5"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-shell-linux-arm64"
        sha256 "c6907eeaf1a3e9c0455487205a702ed3b6c70b8fb32163fc344e1c46e09ebdae"
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
