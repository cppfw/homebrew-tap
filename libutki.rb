class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.122.tar.gz"
  sha256 "27f818d2e9a0b5f4d2fe407a3aaa57a813e3407046d1355339ba9b0363a32b45"

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
