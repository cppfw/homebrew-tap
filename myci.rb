class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.216.tar.gz"
  sha256 "3999cd80f0cba4b6488eee7c817e6f2d7baa6e3ce2aa06241c91c2a3e2c8d846"

  depends_on "md5sha1sum"
  depends_on "curl"

  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
