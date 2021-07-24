class Mordavokne < Formula
  desc "Intrusive C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/mordavokne"
  url "https://github.com/cppfw/mordavokne/archive/0.2.71.tar.gz"
  sha256 "763c1644e59a4dfba97136938024d02ccaa9e18b255e4410277e9fbdd4882e53"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libutki"
  depends_on "libpapki"
  depends_on "libopros"
  depends_on "libtreeml"
  depends_on "glew"
  depends_on "libr4"
  depends_on "libmorda"
  depends_on "libmorda-render-opengl"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  #test do
  #  system "make", "test"
  #end
end
