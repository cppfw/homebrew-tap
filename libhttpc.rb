class Libhttpc < Formula
  desc "C++ cross-platform HTTP client library."
  homepage "https://github.com/cppfw/httpc"
  url "https://github.com/cppfw/httpc/archive/0.1.13.tar.gz"
  sha256 "ac82e55994bac7749b8a42248696c3c97e30f3a612ceffb5069000cf6f37d6fc"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
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
