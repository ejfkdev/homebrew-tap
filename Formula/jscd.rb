class Jscd < Formula
  desc "JavaScript .jsc (V8 code cache) decompiler written in Rust (Node 8.0-26.10, V8 5.8-14.6)"
  homepage "https://github.com/ejfkdev/jscd"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.2.1/jscd-v0.2.1-macos-arm64"
      sha256 "a2869dbafc465991db5eee3879d1c44765d95bb0e8831589c4574582577f7032"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.2.1/jscd-v0.2.1-macos-amd64"
      sha256 "3604b3704feb439ee82a0f9618eb8cfd73a57b0819ce2f8844b8c660def2e1b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.2.1/jscd-v0.2.1-linux-arm64"
      sha256 "10999c1b3acce92eced8499d992582418d8ba6d5ec119cc8c35af5d1e93a4bd7"
    end
    on_intel do
      url "https://github.com/ejfkdev/jscd/releases/download/v0.2.1/jscd-v0.2.1-linux-amd64"
      sha256 "2316efb571adb7121d00c2a69d765ae71e36f5b6bc09be697c561d603cf7e026"
    end
  end

  def install
    bin.install Dir["jscd-*"].first => "jscd"
  end

  test do
    system "#{bin}/jscd", "--help"
  end
end
