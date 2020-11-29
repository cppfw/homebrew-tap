class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.71.tar.gz"
  sha256 "85e9de18465d75ee4d713685afb8ba69d9c65fe79ee32db55b3d4de9a69c96f9"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
