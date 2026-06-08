class Dj < Formula
  desc "CLI tool by ejfkdev"
  homepage "https://github.com/ejfkdev/dj"
  version "0.3.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.2/dj-darwin-arm64"
      sha256 "c4c11cf974f4ee790fb63e8fda3bb0ec2c084dfe51c3e0d38eecd7b8bea01198"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.2/dj-darwin-amd64"
      sha256 "6ab57d37a68f055c7016414bab725f0813a772a000f34202c71d2a56e3a87139"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.2/dj-linux-arm64"
      sha256 "bd1d7520cf8d7019b968e093b717887acf22aff453e25542fe2290cf501f71ab"
    end
    on_intel do
      url "https://github.com/ejfkdev/dj/releases/download/v0.3.2/dj-linux-amd64"
      sha256 "0899d86d644d0680aab0a7b52829a06d3274eab4e1adb502c47cc57c950bc7fd"
    end
  end

  def install
    bin.install Dir["dj-*"].first => "dj"
  end

  test do
    system "#{bin}/dj", "--help"
  end
end
