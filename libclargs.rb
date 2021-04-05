class Libclargs < Formula
  desc "C++ cross-platform library for parsing command line arguments."
  homepage "https://github.com/cppfw/clargs"
  url "https://github.com/cppfw/clargs/archive/0.2.18.tar.gz"
  sha256 "8110df6df47ac40cfa3bae91f81f765643c4519fd36d6ad768ee08b734a26e60"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
