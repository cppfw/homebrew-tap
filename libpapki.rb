class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.95.tar.gz"
  sha256 "44ebb7050f4bf751ce70768e9f26810e5a47edf65e19ce692ef1dc4900408c6a"

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
