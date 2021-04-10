class Libnitki < Formula
  desc "C++ cross-platform threading library."
  homepage "https://github.com/cppfw/nitki"
  url "https://github.com/cppfw/nitki/archive/1.0.42.tar.gz"
  sha256 "71cae718c58f9996cd73635e74a289c298d3da293610c2ecb69d093aef99ff4b"

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
