class Pycdc < Formula
  desc "Python bytecode (.pyc/.pyo) decompiler and disassembler (Python 2.0-3.15, CPython/PyPy)"
  homepage "https://github.com/ejfkdev/pycdc"
  version "0.8.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.0/pycdc-aarch64-macos"
      sha256 "5e7e94f29b559c26e8a909ec45ad5603f4ddccd977b40109359b83e758880287"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.0/pycdas-aarch64-macos"
        sha256 "9668fc883436dff9a29d92d3f078f75512274e32f9d448535a67afe8796ea811"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.0/pycdc-x86_64-macos"
      sha256 "406a2abbc3d3a11e045335603f5d720a5ea827df96e6251f526a8d04c74e5e4e"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.0/pycdas-x86_64-macos"
        sha256 "f1c954b88cfa7534f4324c4021ec2056ac9baec08640fd62ed80361d8e4ee0ba"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.0/pycdc-aarch64-linux"
      sha256 "9c1ce5651b706f2a7e266d8b97f357cc4aff914048f7c2af25ff1386c5768b9d"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.0/pycdas-aarch64-linux"
        sha256 "9917c09d7ac4d428405011d6a04d71fe662a5d32dad828bc8974e0c3a58a2f21"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.0/pycdc-x86_64-linux"
      sha256 "99bc1a8f0818ff265d49ff57e2168f931e9604fa7cd2823fcf7b34f118a139b6"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.0/pycdas-x86_64-linux"
        sha256 "10522892c9f4def7ad16f5d71b684851b442d8d7385a9ff011a328c3eca69863"
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
