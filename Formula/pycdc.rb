class Pycdc < Formula
  desc "Python bytecode (.pyc/.pyo) decompiler and disassembler (Python 2.0-3.15, CPython/PyPy)"
  homepage "https://github.com/ejfkdev/pycdc"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.6.0/pycdc-aarch64-macos"
      sha256 "68ae4aed04734f10eb22aedc3f63177af22f254e8f103a54fa1c5982da5272be"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.6.0/pycdas-aarch64-macos"
        sha256 "5720e4045e624043a672420c9ec9eed473ecaa270d2e5dd25c95f96af81b577e"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.6.0/pycdc-x86_64-macos"
      sha256 "3f67bf478f12c5db82d798c91eac33e11e5674ce0869d6f1e92c3d267374aa29"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.6.0/pycdas-x86_64-macos"
        sha256 "44f74e465940c8f82fc45508aa1c60c227deb4c304f3d0b4b0b104de527c0eb4"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.6.0/pycdc-aarch64-linux"
      sha256 "43b71b536e91b55714359c7ade6b241bafbb7d9a5384f8b0995b1351bf212e96"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.6.0/pycdas-aarch64-linux"
        sha256 "93ae1945902334f5d11d48a6c3ac414dc6844eda080875eb6a8aeb8db6839863"
      end
    end
    on_intel do
      url "https://github.com/ejfkdev/pycdc/releases/download/v0.6.0/pycdc-x86_64-linux"
      sha256 "169c5806b8247f2fa8bd2778c8172077dd4c4a040c69adc77222cd0c38568490"

      resource "pycdas" do
        url "https://github.com/ejfkdev/pycdc/releases/download/v0.6.0/pycdas-x86_64-linux"
        sha256 "fb6618edde12e191d3219bab0c02920d178115e78afbd6aba007bc1d23c04f97"
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
