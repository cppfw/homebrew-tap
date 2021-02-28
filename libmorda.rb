class Libmorda < Formula
  desc "C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/morda"
  url "https://github.com/cppfw/morda/archive/0.5.161.tar.gz"
  sha256 "e29da8f1a50479e74b541cf31c6f4cc15ddc17f2748528e214bc708e852108b0"

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
