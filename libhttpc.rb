class Libhttpc < Formula
  desc "C++ cross-platform HTTP client library."
  homepage "https://github.com/cppfw/httpc"
  url "https://github.com/cppfw/httpc/archive/0.1.9.tar.gz"
  sha256 "773f682a18e86399a15cdd1ea9ccb4f32973314c2deef9c7a6549cc29b5c6f82"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libnitki"
  depends_on "curl"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
