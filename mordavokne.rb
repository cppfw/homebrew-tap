class Mordavokne < Formula
  desc "Intrusive C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/mordavokne"
  url "https://github.com/cppfw/mordavokne/archive/0.2.61.tar.gz"
  sha256 "a2e51739a6ee81a3a68d51122685fb85ca2ccb6b05e78675a7c9ce483cc81f26"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libutki"
  depends_on "libpapki"
  depends_on "libopros"
  depends_on "libtreeml"
  depends_on "glew"
  depends_on "libr4"
  depends_on "libmorda"
  depends_on "libmorda-opengl2-ren"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  #test do
  #  system "make", "test"
  #end
end
