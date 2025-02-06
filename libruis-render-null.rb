class LibruisRenderNull < Formula
  desc "OpenGl renderer for ruis GUI library."
  homepage "https://github.com/cppfw/ruis-render-null"
  url "https://github.com/cppfw/ruis-render-null/archive/0.0.6.tar.gz"
  sha256 "5bad175566fbf23a82028bd1531fdca93e984032ec62ee8b5ae388bcd52fc89a"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libruis"
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
