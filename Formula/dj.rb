class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.6.3"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.3/dj-darwin-arm64"
      sha256 "f3f416d6898d454e44ff69e0ca51dff14487a686d9ed7362524ffe29e209726e"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.3/dj-darwin-amd64"
      sha256 "e7ae24f36c38b743f51e974dd1a9beae20529303a8374d2badc96184c14ebab7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.3/dj-linux-arm64"
      sha256 "bdeb8ef59bd885f75ee77b3fbb4efdfe206898e14a3585a522eaab345e551774"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.6.3/dj-linux-amd64"
      sha256 "a9bca9fb39e08e585d69df2fe097b8b054314c9972a827bcc17eff3a542803d2"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
