class Libfsif < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/fsif"
  url "https://github.com/cppfw/fsif/archive/1.0.158.tar.gz"
  sha256 "6fa750016d4fbd56ac2f4d9b17b481f5522c1eb8e091e2d31e0de7afb0469cf9"

  depends_on "prorab" => :build
  depends_on "libutki"
  depends_on "zlib"
  
  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "--directory=src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
