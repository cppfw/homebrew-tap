class Libsvgdom < Formula
  desc "C++ cross-platform SVG DOM library."
  homepage "https://github.com/cppfw/svgdom"
  url "https://github.com/cppfw/svgdom/archive/0.3.79.tar.gz"
  sha256 "85b075e9a54c7b37f4f6bf7df02bf0fb72212b424e4b95cbf8630098d9979a6f"

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

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
