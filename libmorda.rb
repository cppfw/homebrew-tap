class Libmorda < Formula
  desc "C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/morda"
  url "https://github.com/cppfw/morda/archive/0.5.151.tar.gz"
  sha256 "8cdfa6de5aeedef258f7fe3279dfff9d173083559f36f872a9fd2cd2caf1420e"

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
