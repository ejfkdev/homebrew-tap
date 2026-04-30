class Vcc < Formula
  desc "VCC CLI tool"
  homepage "https://github.com/ejfkdev/vcc-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/vcc-cli/releases/download/v0.1.0/vcc-aarch64-macos"
      sha256 "23e16beb17a7aa2ea3d1e129f9efeefa0b112608ac1cd32b6765121c38ff0064"
    end
    on_intel do
      url "https://github.com/ejfkdev/vcc-cli/releases/download/v0.1.0/vcc-x86_64-macos"
      sha256 "5b429758aab8dfaff1cf13b9242072af3f9cea739c04fb54f34d77e518e04da6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/vcc-cli/releases/download/v0.1.0/vcc-aarch64-linux-gnu"
      sha256 "4fdb1c3ab49de1c161c674cffe957091e1f7d70cb0da9c8a1aaa68c493ff78c7"
    end
    on_intel do
      url "https://github.com/ejfkdev/vcc-cli/releases/download/v0.1.0/vcc-x86_64-linux-gnu"
      sha256 "5799afb6a1201191ec0ee590030a8b828d003f50b76670df1723109fd8bcce1c"
    end
  end

  def install
    bin.install Dir["vcc-*"].first => "vcc"
  end

  test do
    system "#{bin}/vcc", "--help"
  end
end
