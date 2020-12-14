class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.31.tar.gz"
  sha256 "b6070c03fad4358e97a20b08c1807cea46f77aaa11a19697ccabe66dc4bfa136"

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
