class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.44.tar.gz"
  sha256 "99d17a56cfb0e46d18e518bc08956cb91bf94e4626d523d010b168fe259255c6"

  depends_on "prorab" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build # needed for tests
  depends_on "libpapki" => :build # needed for tests
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
