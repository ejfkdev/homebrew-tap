class Pycdc < Formula
  desc "Python bytecode (.pyc/.pyo) decompiler and disassembler (Python 2.0-3.15, CPython/PyPy)"
  homepage "https://github.com/ejfkdev/pycdc"
  version "0.8.1"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.1/pycdc-aarch64-macos"
      sha256 "0a1dd9db2403ae92e67b9bcf54e85a109cdf193ee14aaf27d2f06b1949d02df3"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.1/pycdas-aarch64-macos"
        sha256 "0c00a6b5027e34fa8d9b1c9b110c651d5d1fed9349e22e8328db84ffb4e49ef2"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.1/pycdc-x86_64-macos"
      sha256 "43433fbd7752dbc2a365a38fc95515795ac17099e0ad8c721e9be11bce2a5327"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.1/pycdas-x86_64-macos"
        sha256 "c4c66f749bb692feeb8b5110cf034c175645ca9cf25294c721bb24c175183c9b"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.1/pycdc-aarch64-linux"
      sha256 "a75c6ae545000fd71b1a1575f451e04114d63395d5ae2590a163ff86de0c1eb8"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.1/pycdas-aarch64-linux"
        sha256 "6e4385362e5a3495b120f263112779616e766d8ef0dfddc6635a612fa1e459c9"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.1/pycdc-x86_64-linux"
      sha256 "4906970132548fd58812d563dd334ba798cbd6c726e705b55404276e5296a7d4"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.8.1/pycdas-x86_64-linux"
        sha256 "c788c46b64107861465286580b6d74e944a00415c39f6954b52b99b893f46b08"
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
