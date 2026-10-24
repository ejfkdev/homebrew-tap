class Pycdc < Formula
  desc "Python bytecode (.pyc/.pyo) decompiler and disassembler (Python 2.0-3.15, CPython/PyPy)"
  homepage "https://github.com/ejfkdev/pycdc"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.7.0/pycdc-aarch64-macos"
      sha256 "2e20f65bc2ec89599fa2da273127c2327f5c300b693b190c93c32c3d9e5def08"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.7.0/pycdas-aarch64-macos"
        sha256 "2c8dd4eee4017436c116f10a3c1984a2f454b66d5469076d769eec3fd8cc3b78"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.7.0/pycdc-x86_64-macos"
      sha256 "2965f6ab47b59cc4237be2eb4b5a854d13239c50520766f642ff3bc85709c09e"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.7.0/pycdas-x86_64-macos"
        sha256 "a607aeb99845275b668e3a95effb5c64a00496958060ecf29da6ea3a897e8636"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.7.0/pycdc-aarch64-linux"
      sha256 "658c76615eee60984183cbf561a60b13b0a532c3a970c4d00830b82ec83ec9a9"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.7.0/pycdas-aarch64-linux"
        sha256 "3658e0496aa479aab65360a4af9a0bf0ca0007ed958d812c61b426ca078f5f76"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.7.0/pycdc-x86_64-linux"
      sha256 "23254753964ebddc952854578a600e36486f2fca81b6bea6a054c03d7756633f"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.7.0/pycdas-x86_64-linux"
        sha256 "0efd068deb18fbaeb0de5c06fb897a619b9fc8284b8f8c392f01d3d9d38297cf"
      end
    end
  end

  def install
    bin.install Dir["pycdc-*"].first => "pycdc"
    resource("pycdas").stage { bin.install Dir["pycdas-*"].first => "pycdas" }
  end

  test do
    system "#{bin}/pycdc", "--help"
    system "#{bin}/pycdas", "--help"
  end
end
