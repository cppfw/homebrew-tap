class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.32.tar.gz"
  sha256 "ab2e791c585a25f631a95d3487c46516451edc57073bba03a7d6161106036641"

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
