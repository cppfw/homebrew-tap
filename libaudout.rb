class Libaudout < Formula
  desc "C++ cross-platform audio output library."
  homepage "https://github.com/cppfw/audout"
  url "https://github.com/cppfw/audout/archive/0.3.30.tar.gz"
  sha256 "6b2837585499d395e6367d542b223230e4774c798fc76d16639626c3ae999008"

  depends_on "prorab" => :build
  depends_on "libnitki" => :build
  depends_on "libutki"
  
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
