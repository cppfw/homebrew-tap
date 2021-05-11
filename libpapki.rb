class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.99.tar.gz"
  sha256 "82a2c11dd640cbaf737ebaee24702619c5aa4c236bf666c2a08959a2270d8a37"

  depends_on "prorab" => :build
  depends_on "libutki"
  depends_on "zlib"
  
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
