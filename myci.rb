class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.124.tar.gz"
  sha256 "8267870ef95e17a88381768139d2ccbb83eb2dbbf583c3a5667885e5b7e62042"

  depends_on "md5sha1sum"
  depends_on "curl"
  depends_on "jq"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
