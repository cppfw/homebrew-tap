class LibruisRenderOpengl < Formula
  desc "OpenGl renderer for ruis GUI library."
  homepage "https://github.com/cppfw/ruis-render-opengl"
  url "https://github.com/cppfw/ruis-render-opengl/archive/0.1.93.tar.gz"
  sha256 "2cd98ef840adb1605a1f30e1cdae54b4fcb62968842b82454ad9e68ec0eb1216"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libruis"
  depends_on "glew"
  depends_on "libr4"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
