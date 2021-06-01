class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.40.tar.gz"
  sha256 "2068defaf74d0ea97fbce5b7d6006f7874fb79f01cdda33e76640a7bd426249a"

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
