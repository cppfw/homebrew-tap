class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.39.tar.gz"
  sha256 "49f967850353475fe5d3a2428d2f6e8193be7ad71af8d6863d2b8925f236ce2c"

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
