class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.81.tar.gz"
  sha256 "00290cd19ecde066b05c4aaddd47c013e4627e9a3533714d80d17b5957543d1e"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
