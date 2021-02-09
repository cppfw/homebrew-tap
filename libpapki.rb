class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.91.tar.gz"
  sha256 "445ad7c1f155a1dff84b8b1ad4ee49b512f54596912ca904bb6229a5351c80f9"

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
