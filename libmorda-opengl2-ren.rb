class LibmordaOpengl2Ren < Formula
  desc "OpenGl2 renderer for morda GUI library."
  homepage "https://github.com/cppfw/morda-opengl2-ren"
  url "https://github.com/cppfw/morda-opengl2-ren/archive/0.1.41.tar.gz"
  sha256 "9d13034ca24a15338633de43f5c46a37076add1418d2aec4e513e2393f426394"

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
