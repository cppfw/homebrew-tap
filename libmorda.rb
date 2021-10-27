class Libmorda < Formula
  desc "C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/morda"
  url "https://github.com/cppfw/morda/archive/0.5.184.tar.gz"
  sha256 "56354072fe2fdc74e41d626620198add811827bf4a9d7621d596080001f00d05"

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
