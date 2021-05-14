class LibmordaOpengl2Ren < Formula
  desc "OpenGl2 renderer for morda GUI library."
  homepage "https://github.com/cppfw/morda-opengl2-ren"
  url "https://github.com/cppfw/morda-opengl2-ren/archive/0.1.47.tar.gz"
  sha256 "526f7860de170c7a7c5e2a4b75025b2ead8f41fb08a015fa6cb5559072481cc6"

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
