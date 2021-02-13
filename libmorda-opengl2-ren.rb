class LibmordaOpengl2Ren < Formula
  desc "OpenGl2 renderer for morda GUI library."
  homepage "https://github.com/cppfw/morda-opengl2-ren"
  url "https://github.com/cppfw/morda-opengl2-ren/archive/0.1.43.tar.gz"
  sha256 "fbc4516c7e0f8110a27f152bbdc1ad62e9f4e4d5fda166346c00bae579d1c398"

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
