class Libr4 < Formula
  desc "C++ 3d math library."
  homepage "https://github.com/cppfw/r4"
  url "https://github.com/cppfw/r4/archive/1.0.105.tar.gz"
  sha256 "c5ea97935a93f0c51f0919cfaa80febe8a7690527e0fcd25ed12c08a58c56b41"

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
