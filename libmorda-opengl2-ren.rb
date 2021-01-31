class LibmordaOpengl2Ren < Formula
  desc "OpenGl2 renderer for morda GUI library."
  homepage "https://github.com/cppfw/morda-opengl2-ren"
  url "https://github.com/cppfw/morda-opengl2-ren/archive/0.1.42.tar.gz"
  sha256 "f51cc2250649f0d9eea79ade5d19f5d1ec349ea38b84ca438d1825938012aba7"

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
