class Mordavokne < Formula
  desc "Intrusive C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/mordavokne"
  url "https://github.com/cppfw/mordavokne/archive/0.2.64.tar.gz"
  sha256 "559ead144b9c6582858ff445b48f5a5aad8b6e72d1eb6bb62c060e5934a2cc54"

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
