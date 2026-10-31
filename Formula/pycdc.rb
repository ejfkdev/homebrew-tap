class Pycdc < Formula
  desc "Python bytecode (.pyc/.pyo) decompiler and disassembler (Python 2.0-3.15, CPython/PyPy)"
  homepage "https://github.com/ejfkdev/pycdc"
  version "0.8.2"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.2/pycdc-aarch64-macos"
      sha256 "baba4cde955fc30c36e8275c2d091a2fe852e03440c8559399f57c16f7bacf1c"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.2/pycdas-aarch64-macos"
        sha256 "a7aeed99eb8cd298c1c5f9705b32824346ed06d25cee2b83ea8bd142c92b665c"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.2/pycdc-x86_64-macos"
      sha256 "bc3c36ba6a9847595adca2ef43cd0616159a5aeae02afcdff0dc29f67b4d4d2f"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.2/pycdas-x86_64-macos"
        sha256 "81c24e01126361d647ba63cff1ab4b5dc5df78f9398772531250010b36f21410"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.2/pycdc-aarch64-linux"
      sha256 "6d717ca386dfd03905c9d1adba2274672eed2a286c1345e19ad0f9fd9a4c5347"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.2/pycdas-aarch64-linux"
        sha256 "3d45013086cfc01fc75667177c9d5af733028015c80e9a2d8d06f077fc674940"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.2/pycdc-x86_64-linux"
      sha256 "d6ddaca319e78f74f196a9533e5144d48c4a7fe7723b895d4c4428febe2c9be8"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.2/pycdas-x86_64-linux"
        sha256 "04ee19b0f4b19472509f2da2e03857b9c66a680f265974318aa2a6557318cadd"
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
