class Libmorda < Formula
  desc "C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/morda"
  url "https://github.com/cppfw/morda/archive/0.5.195.tar.gz"
  sha256 "f25c25d1609d259154f1a11d83c8f8463ed836686cedfb5a5173f2b9fe761477"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "glew" => :build
  depends_on "libnitki" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libpapki"
  depends_on "libtreeml"
  depends_on "libpng"
  depends_on "jpeg"
  depends_on "z"
  depends_on "freetype"
  depends_on "libr4"
  depends_on "libsvgdom"
  depends_on "libsvgren"
  
  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
