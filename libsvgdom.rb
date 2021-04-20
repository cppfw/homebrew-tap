class Libsvgdom < Formula
  desc "C++ cross-platform SVG DOM library."
  homepage "https://github.com/cppfw/svgdom"
  url "https://github.com/cppfw/svgdom/archive/0.3.62.tar.gz"
  sha256 "9524ee5c6e814fbdde9ac635c7b819f1c55183429f617c7c178f5c126b68260e"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libmikroxml" => :build
  depends_on "libtst" => :build
  depends_on "libcssom"
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
