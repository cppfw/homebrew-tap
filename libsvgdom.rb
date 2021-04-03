class Libsvgdom < Formula
  desc "C++ cross-platform SVG DOM library."
  homepage "https://github.com/cppfw/svgdom"
  url "https://github.com/cppfw/svgdom/archive/0.3.59.tar.gz"
  sha256 "5879e8ead27e27045e0038d938e6fff7c58f039729a2fce7a93eebca6de4265d"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libmikroxml" => :build
  depends_on "libcssdom"
  depends_on "libpapki"
  depends_on "libutki"
  depends_on "libr4"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
