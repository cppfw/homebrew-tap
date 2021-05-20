class Libr4 < Formula
  desc "C++ 3d math library."
  homepage "https://github.com/cppfw/r4"
  url "https://github.com/cppfw/r4/archive/1.0.56.tar.gz"
  sha256 "e7518f08558d4c92b7c5482cd6e3faa9c80fdf9c9be40ffce8749a1eed0d5de9"

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
