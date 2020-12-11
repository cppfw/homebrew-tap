class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.78.tar.gz"
  sha256 "c8c86f36dfcd62b8037364fb7df5a6c1ddad5d39e0c996a47e0fbb0388b62d27"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
