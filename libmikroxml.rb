class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.72.tar.gz"
  sha256 "8c45643806e8a9abe098dc584c07cee73f6f3d45371f86ff2de00b5d1566d46e"

  depends_on "prorab" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build # needed for tests
  depends_on "libpapki" => :build # needed for tests
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
