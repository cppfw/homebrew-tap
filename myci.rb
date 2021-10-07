class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.140.tar.gz"
  sha256 "669d9bedfed86e6c1850b2f41838e7fa8809edd6f05fc3372320f017934a59d9"

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
