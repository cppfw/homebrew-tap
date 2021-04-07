class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.85.tar.gz"
  sha256 "05b77c176da31ce6e038df2da8f5bad36b892f0ecd9b0d63dd740373a269fab6"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
