class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.121.tar.gz"
  sha256 "981436271a01141974de3282e45c44515232cff9d6ec6ea4fae08ede0ac5ce9e"

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
