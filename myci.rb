class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.90.tar.gz"
  sha256 "6d9e2b33492cff1d1d89f53053df7b28418a1e08f01eb3ba65deb4e133783e87"

  depends_on "md5sha1sum"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
