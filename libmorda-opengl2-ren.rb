class LibmordaOpengl2Ren < Formula
  desc "OpenGl2 renderer for morda GUI library."
  homepage "https://github.com/cppfw/morda-opengl2-ren"
  url "https://github.com/cppfw/morda-opengl2-ren/archive/0.1.46.tar.gz"
  sha256 "166b944febe12734fea777996abb0f429ad4b98406ba0e3fc91d7c07af1399ac"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libmorda"
  depends_on "glew"
  depends_on "libr4"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  #test do
  #  system "make", "test"
  #end
end
