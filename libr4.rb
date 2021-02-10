class Libr4 < Formula
  desc "C++ 3d math library."
  homepage "https://github.com/cppfw/r4"
  url "https://github.com/cppfw/r4/archive/1.0.51.tar.gz"
  sha256 "eddbd92152db5b2ea776683be37c6d4016487e8c3c0993c8b1c101e4b8039679"

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
