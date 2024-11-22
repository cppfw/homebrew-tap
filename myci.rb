class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.171.tar.gz"
  sha256 "24ff7246bfdb4cc6b7dae750efd75eb0b0ded03e103f8c2a2edb881cad46c844"

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
