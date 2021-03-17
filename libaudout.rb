class Libaudout < Formula
  desc "C++ cross-platform audio output library."
  homepage "https://github.com/cppfw/audout"
  url "https://github.com/cppfw/audout/archive/0.3.32.tar.gz"
  sha256 "ce25bcc0dcb201d38b75535885adab0f69133c10240190c1e6fa9d13e3ece446"

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
