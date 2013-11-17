require 'formula'

class Apsw < Formula
  homepage 'http://code.google.com/p/apsw'
  url 'http://apsw.googlecode.com/files/apsw-3.8.1-r1.zip'
  sha1 'f8c699a248152aae29e87483780a1269cb902896'
  version "3.8.1"

  depends_on 'python' => :optional

  def install
    ENV.deparallelize
    system "python setup.py fetch --all --version=#{version}"
    system "python setup.py build --enable-all-extensions"
    system "python setup.py install --prefix=#{prefix}"
  end
end
