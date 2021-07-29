class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.133.tar.gz"
  sha256 "2dd7abce8ccfe1834bbd71c5353b8bcbb959ef118bcc0d33961c59997e3d971a"

  depends_on "dos2unix"
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
