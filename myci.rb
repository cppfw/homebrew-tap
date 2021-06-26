class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.95.tar.gz"
  sha256 "6a0d5deb3c426bb8db6b0a64d815d41c5fba0732a36b181f51afaf1652c99455"

  depends_on "md5sha1sum"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
