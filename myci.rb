class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.79.tar.gz"
  sha256 "3e5f2c80e61ba4cc1c5a75013c994b77db33ebae240499ce52fc05bcd70ee3fb"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
