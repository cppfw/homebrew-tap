class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.133.tar.gz"
  sha256 "297a1a3a4997ff7ce263236016694957f45db248ce54e5d330e4a413d3d06700"

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
