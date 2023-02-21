class Libhttpc < Formula
  desc "C++ cross-platform HTTP client library."
  homepage "https://github.com/cppfw/httpc"
  url "https://github.com/cppfw/httpc/archive/0.1.12.tar.gz"
  sha256 "1f6c49faf9f9befea30ad699dc74a31f89c05b7ee41c0f97f772393c0e4756bd"

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
