class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.89.tar.gz"
  sha256 "2cb80aff9f94e5e29899d24c078951cad97b79f2df44f824a78cc374a9550237"

  depends_on "md5sha1sum"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
