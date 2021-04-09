class Libeasyhttp < Formula
  desc "C++ cross-platform HTTP client library."
  homepage "https://github.com/cppfw/easyhttp"
  url "https://github.com/cppfw/easyhttp/archive/0.1.7.tar.gz"
  sha256 "3dbcdf852624e7a9b9c96468074d196230e25a8b9b915574c5606679ee00426e"

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
