class Libjsondom < Formula
  desc "C++ cross-platform JSON DOM library."
  homepage "https://github.com/cppfw/jsondom"
  url "https://github.com/cppfw/jsondom/archive/0.1.15.tar.gz"
  sha256 "30acbf2f2251e16e9777e44c6b1de3f5308f3fd947e5c5f9ed1277f30d07e503"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build
  depends_on "libpapki"
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
