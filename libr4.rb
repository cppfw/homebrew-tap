class Libr4 < Formula
  desc "C++ 3d math library."
  homepage "https://github.com/cppfw/r4"
  url "https://github.com/cppfw/r4/archive/1.0.108.tar.gz"
  sha256 "74d23a0b3ed4b7210ff583680666bfb73c760279326b89d2bb48e47424424a72"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
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
