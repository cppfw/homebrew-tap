class Libnitki < Formula
  desc "C++ cross-platform threading library."
  homepage "https://github.com/cppfw/nitki"
  url "https://github.com/cppfw/nitki/archive/1.0.93.tar.gz"
  sha256 "25a10e14993353d3d03c5643b1719aa69565552f1ba5f98a5e43ae002bea815b"

  depends_on "prorab" => :build
  depends_on "libopros"
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
