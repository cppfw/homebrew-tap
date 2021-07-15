class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.115.tar.gz"
  sha256 "7d9c31cb773be63325db868dc4b4b149150590b3455ca1525716e7be55b1d488"

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
