class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.164.tar.gz"
  sha256 "5b25d51c5d9a62dcd9733dd02f574d39945a5ee4ad5e7832ac807f35421f6e4b"

  depends_on "md5sha1sum"
  depends_on "curl"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "--include-dir=$(brew --prefix)/include", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "--include-dir=$(brew --prefix)/include", "test"
  end
end
