class Libaudout < Formula
  desc "C++ cross-platform audio output library."
  homepage "https://github.com/cppfw/audout"
  url "https://github.com/cppfw/audout/archive/0.3.31.tar.gz"
  sha256 "9eb2f67a8f92cd597f804c3d088aff72f2bb28d4149c610927faa0b8a4fee3f2"

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
