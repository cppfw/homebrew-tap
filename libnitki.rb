class Libnitki < Formula
  desc "C++ cross-platform threading library."
  homepage "https://github.com/cppfw/nitki"
  url "https://github.com/cppfw/nitki/archive/1.0.37.tar.gz"
  sha256 "10d496bc9e20a57ef9e7088ebd5c73b3ac07d361b722a589d564b2b8ae0ba5a3"

  depends_on "prorab" => :build
  depends_on "libopros"
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
