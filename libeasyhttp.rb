class Libeasyhttp < Formula
  desc "C++ cross-platform HTTP client library."
  homepage "https://github.com/cppfw/easyhttp"
  url "https://github.com/cppfw/easyhttp/archive/0.1.6.tar.gz"
  sha256 "944b81a68ecc7c46bceed75a5268bc92ae5140044f5f70b77d8064a67837f797"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
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
