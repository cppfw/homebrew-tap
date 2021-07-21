class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.119.tar.gz"
  sha256 "c8679c8e67acc7f86f32cdd8b4e8e080da78325bdb1a6ce5295753fdb8b58580"

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
