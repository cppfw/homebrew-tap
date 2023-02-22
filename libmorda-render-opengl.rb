class LibmordaRenderOpengl < Formula
  desc "OpenGl renderer for morda GUI library."
  homepage "https://github.com/cppfw/morda-render-opengl"
  url "https://github.com/cppfw/morda-render-opengl/archive/0.1.58.tar.gz"
  sha256 "2f6c090e1321a775421b23afb2f2efa2d77ff103ba69b334e33fb422bbab10e8"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libmorda"
  depends_on "glew"
  depends_on "libr4"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
