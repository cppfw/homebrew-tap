class Libruis < Formula
  desc "C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/ruis"
  url "https://github.com/cppfw/ruis/archive/0.5.247.tar.gz"
  sha256 "0806e1ff9d6b306d3fd19c79016c245e3e85003a228203bcb0cf714f0ce35bc4"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "glew" => :build
  depends_on "libnitki" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libpapki"
  depends_on "libtml"
  depends_on "librasterimage"
  depends_on "z"
  depends_on "freetype"
  depends_on "libr4"
  depends_on "libsvgdom"
  depends_on "libsvgren"
  
  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
