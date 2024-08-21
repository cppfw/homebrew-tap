class Libsvgdom < Formula
  desc "C++ cross-platform SVG DOM library."
  homepage "https://github.com/cppfw/svgdom"
  url "https://github.com/cppfw/svgdom/archive/0.4.17.tar.gz"
  sha256 "aa2f969d67f38a9c4f05dea09a8069dba6af81600071aa1163b61da4524d4c9c"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build
  depends_on "libmikroxml"
  depends_on "libcssom"
  depends_on "libpapki"
  depends_on "libutki"
  depends_on "libr4"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
