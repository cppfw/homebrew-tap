class Libmorda < Formula
  desc "C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/morda"
  url "https://github.com/cppfw/morda/archive/0.5.147.tar.gz"
  sha256 "4af2925fb105db2cc1f02691b04690c0a08542108411a00688f75a17d31292ff"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "glew" => :build
  depends_on "libnitki" => :build
  depends_on "libutki"
  depends_on "libpapki"
  depends_on "libpuu"
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
