class Libsvgdom < Formula
  desc "C++ cross-platform SVG DOM library."
  homepage "https://github.com/cppfw/svgdom"
  url "https://github.com/cppfw/svgdom/archive/0.3.80.tar.gz"
  sha256 "974d3bb6bf518457f4b8186bac8a425cd47c96b7557c0aa9076df0228400c6df"

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
