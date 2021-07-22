class LibmordaRenderOpengl < Formula
  desc "OpenGl2 renderer for morda GUI library."
  homepage "https://github.com/cppfw/morda-render-opengl"
  url "https://github.com/cppfw/morda-render-opengl/archive/0.1.48.tar.gz"
  sha256 "12a2c21e00699ff9a4c7bb5d84567766959ecdb5725390905ff56aadb2acf0c1"

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
