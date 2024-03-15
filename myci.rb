class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.163.tar.gz"
  sha256 "4200ac42782a32657548cde18682a632e602ab2d31e32b66b524e70494fbd4ec"

  depends_on "md5sha1sum"
  depends_on "curl"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
