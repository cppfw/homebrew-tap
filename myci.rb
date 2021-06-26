class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.93.tar.gz"
  sha256 "d7c11ccc526c3afe0ed6b5891e504d521e9a531f724c6c8fbb27fecb63609d5f"

  depends_on "md5sha1sum"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
