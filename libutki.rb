class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.112.tar.gz"
  sha256 "3326c1769d568f8e8ed3861650a4c8240cdb87098521844913723b6bfca6e52b"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
