class Libaudout < Formula
  desc "C++ cross-platform audio output library."
  homepage "https://github.com/cppfw/audout"
  url "https://github.com/cppfw/audout/archive/0.3.34.tar.gz"
  sha256 "bd65ae029d9c694817537b1e7abb6b9bf51f229d031abc5dd5fac30623f287e8"

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
