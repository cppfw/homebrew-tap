class Libhttpc < Formula
  desc "C++ cross-platform HTTP client library."
  homepage "https://github.com/cppfw/httpc"
  url "https://github.com/cppfw/httpc/archive/0.1.17.tar.gz"
  sha256 "9a745398e9e868a98178e68178fa13ef83c499d966e4faa1378d35dee7098f49"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libhttpmodel"
  depends_on "libnitki"
  depends_on "curl"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
