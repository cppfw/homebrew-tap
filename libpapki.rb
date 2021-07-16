class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.106.tar.gz"
  sha256 "861ff7c12ad858c154e7987aa79d665ec19f4a01e4a063b899991fc870ff016d"

  depends_on "prorab" => :build
  depends_on "libutki"
  depends_on "zlib"
  
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "--directory", "src", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
