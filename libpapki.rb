class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.107.tar.gz"
  sha256 "24e65a745673a1649872fd62a1de1d9546e144d4dd047e92d8d3ba4ecf9b7961"

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
