class Libnitki < Formula
  desc "C++ cross-platform threading library."
  homepage "https://github.com/cppfw/nitki"
  url "https://github.com/cppfw/nitki/archive/1.0.43.tar.gz"
  sha256 "80cf4261f2766acc8b3edf87f6d58461049abc6241aaff130850a8c09d16aee6"

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
