class Libr4 < Formula
  desc "C++ 3d math library."
  homepage "https://github.com/cppfw/r4"
  url "https://github.com/cppfw/r4/archive/1.0.47.tar.gz"
  sha256 "0ad8bbe31ee8869cfe280dfe422a2b44f99d380f55fb863cd8683669c51d2eb8"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
