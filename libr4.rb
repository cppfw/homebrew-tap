class Libr4 < Formula
  desc "C++ 3d math library."
  homepage "https://github.com/cppfw/r4"
  url "https://github.com/cppfw/r4/archive/1.0.49.tar.gz"
  sha256 "1ca6a9bf28ab61aebd70153091b61d2fd07a41ca8f56c22eb1727315e562151a"

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
