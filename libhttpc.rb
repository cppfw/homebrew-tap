class Libhttpc < Formula
  desc "C++ cross-platform HTTP client library."
  homepage "https://github.com/cppfw/httpc"
  url "https://github.com/cppfw/httpc/archive/0.1.8.tar.gz"
  sha256 "6f88ad3bf1df626944362934cb198c9995b48b98ca9ae27fefc55bedddab9885"

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
