class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.38.tar.gz"
  sha256 "c3d6d495bc88883018712683be373085a2e5a10182158003a5eeb8aa03da9a0c"

  depends_on "prorab" => :build
  depends_on "pkg-config" => :build
  depends_on "libpapki" => :build #needed for tests
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
