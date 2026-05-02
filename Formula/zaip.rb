class Zaip < Formula
  desc "ZAIP - client and server CLI tools"
  homepage "https://github.com/ejfkdev/zaip"
  version "1.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/zaip/releases/download/v1.1.0/zaip-client_macos_arm64"
      sha256 "efa202e7f4d4a8d6bd71a71ff4b4f21f721bdb83397903ddc73270658ddd418d"

      resource "server" do
        url "https://github.com/ejfkdev/zaip/releases/download/v1.1.0/zaip-server_macos_arm64"
        sha256 "1d120260b8a14e32d17e22458b3882ec6216363f1804179affb73db4d4d266c2"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/zaip/releases/download/v1.1.0/zaip-client_macos_amd64"
      sha256 "d40f02af71c765da3c2fca7188a74ba672f35e5fcf410b5d43ca999e57316f1c"

      resource "server" do
        url "https://github.com/ejfkdev/zaip/releases/download/v1.1.0/zaip-server_macos_amd64"
        sha256 "f93c62c424cf752a9a780df033919670b08067cbf6182a57f41339bc6e838e8f"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/zaip/releases/download/v1.1.0/zaip-client_linux_arm64"
      sha256 "491c21a974d7769ad1db7f1c0c30c4d8a89ff86a1fa570eb2e514725e21205d9"

      resource "server" do
        url "https://github.com/ejfkdev/zaip/releases/download/v1.1.0/zaip-server_linux_arm64"
        sha256 "0fa59452540173a68cd4798f53145b6dd02bbd28f7cbdeadc3b607ff31c5e4ad"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/zaip/releases/download/v1.1.0/zaip-client_linux_amd64"
      sha256 "60ff103bbcecf0315e310b151b6b779fd75b329bae9d3156aea661f958aa2b8d"

      resource "server" do
        url "https://github.com/ejfkdev/zaip/releases/download/v1.1.0/zaip-server_linux_amd64"
        sha256 "3b6d9ddd5dfdf67268426102c4923c26ff4d462eca533da1ab118f9dc6e37841"
      end
    end
  end

  def install
    bin.install Dir["zaip-client_*"].first => "zaip-client"
    resource("server").stage { bin.install Dir["zaip-server_*"].first => "zaip-server" }
  end

  test do
    system "#{bin}/zaip-client", "--help"
    system "#{bin}/zaip-server", "--help"
  end
end
