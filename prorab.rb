class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.16.2.tar.gz"
  sha256 "2a5c59d7c4b9e15641f5f1976be12a1f500f5a6d96d835d4b3a7471e910600bc"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
