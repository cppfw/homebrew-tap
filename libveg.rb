class Libveg < Formula
  desc "C++ cross-platform vector graphics library."
  homepage "https://github.com/cppfw/veg"
  url "https://github.com/cppfw/veg/archive/0.1.6.tar.gz"
  sha256 "558cac1772b67d5836c494a04c1c8dd4288cbebb42d507f89ccb4753f0f8a4fd"

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
