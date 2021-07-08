class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.99.tar.gz"
  sha256 "7378c36774b508e76a8d236cd0f806d522aaabe6e4feef39de874db02b505bd0"

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
