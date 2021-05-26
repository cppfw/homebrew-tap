class Libnitki < Formula
  desc "C++ cross-platform threading library."
  homepage "https://github.com/cppfw/nitki"
  url "https://github.com/cppfw/nitki/archive/1.0.46.tar.gz"
  sha256 "8ab96bade66076255f1b0bcf2f12a955d78065e39512c377b8079aa1093e0cd7"

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
