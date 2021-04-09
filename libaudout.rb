class Libaudout < Formula
  desc "C++ cross-platform audio output library."
  homepage "https://github.com/cppfw/audout"
  url "https://github.com/cppfw/audout/archive/0.3.33.tar.gz"
  sha256 "6c6f3b232953ae495fe3af102bd35e05ecbaed1542a3b14adf549358a2cd9fd7"

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
