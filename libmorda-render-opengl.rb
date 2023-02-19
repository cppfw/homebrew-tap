class LibmordaRenderOpengl < Formula
  desc "OpenGl renderer for morda GUI library."
  homepage "https://github.com/cppfw/morda-render-opengl"
  url "https://github.com/cppfw/morda-render-opengl/archive/0.1.57.tar.gz"
  sha256 "931fdcaa10d175bd9228f25f81397289b9171810973e595fe94d481be3206a70"

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
