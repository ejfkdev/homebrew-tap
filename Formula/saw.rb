class Saw < Formula
  desc "ShellAnyWhere - shell, client and server CLI tools"
  homepage "https://github.com/ejfkdev/ShellAnyWhere"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-client-macos-arm64"
      sha256 "dad3cf6d22af428775bbb2457311e556bde23dba25d7257daf8093a68949a69d"

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
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-client-macos-x86_64"
      sha256 "cdcee986913bb0abd9b0357f4d849df2fc74c097c6a5dc22b8322d32ee019ad9"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-server-macos-x86_64"
        sha256 "2e3ef2b2c38a72bc3736784fda63e94b854d0866193c1ee175fc814fef14c713"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-shell-macos-x86_64"
        sha256 "73336693af4f25bda58ced32ea5438fed6742c8a8a404906ed8eb6dcf0e058fc"
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
      url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-client-linux-x86_64"
      sha256 "ce8e150f03d5c50106b43630376dd0e6c660299d52dbbaf6a87a73380b7efc2a"

      resource "server" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-server-linux-x86_64"
        sha256 "5df03a6eaf3b9aeb069c2f27957e81fcce577f018907d5aa382000b52cfded9b"
      end

      resource "shell" do
        url "https://github.com/ejfkdev/ShellAnyWhere/releases/download/v0.2.0/saw-shell-linux-x86_64"
        sha256 "5cb10c8c5c7f3eca553d4c20b0930b7c4e6e8c21c8b98fdb9837f1e812aff0b2"
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
