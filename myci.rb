class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.132.tar.gz"
  sha256 "4de39e8bfd341b2a59873e6fe0390e381f08cc4725e7f4e0eae9af309e73a2bb"

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
