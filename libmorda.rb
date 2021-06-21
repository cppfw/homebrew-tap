class Libmorda < Formula
  desc "C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/morda"
  url "https://github.com/cppfw/morda/archive/0.5.169.tar.gz"
  sha256 "c9aafd9d926f2057abb1c90c6b53023cdc6724a2f1a02e7562f35b4318c3a5a4"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "glew" => :build
  depends_on "libnitki" => :build
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
  
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/morda/makefile", "install", "PREFIX=#{prefix}"
    system "make", "-f", "res/makefile", "install", "PREFIX=#{prefix}"
  end

  #test do
  #  system "make", "test"
  #end
end
