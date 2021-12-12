class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.143.tar.gz"
  sha256 "c938f32de4c6fda683d895699a055a1f173c05b7adc7d8ada06d82657e6d91d9"

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
