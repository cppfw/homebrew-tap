class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.80.tar.gz"
  sha256 "e659c45f904f4b989d0ea78a1c0e1ab5b26b6c2be6ad8498685367b6e0bd43c5"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
