class Libnitki < Formula
  desc "C++ cross-platform threading library."
  homepage "https://github.com/cppfw/nitki"
  url "https://github.com/cppfw/nitki/archive/1.0.48.tar.gz"
  sha256 "a7b05778c9f25300b068c66ff498f0fe1691fb128b6fa0962d16132526585da0"

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
