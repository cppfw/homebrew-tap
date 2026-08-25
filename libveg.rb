class Libveg < Formula
  desc "C++ cross-platform vector graphics library."
  homepage "https://github.com/cppfw/veg"
  url "https://github.com/cppfw/veg/archive/0.1.14.tar.gz"
  sha256 "d8ee65d88ed7270d0e16d806fa94dda09c26b07aec4643de5a6cbd06986c93c8"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libantigrain" => :build
  depends_on "libr4" => :build
  depends_on "libtst" => :build
  depends_on "librasterimage"
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
