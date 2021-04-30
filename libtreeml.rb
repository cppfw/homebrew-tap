class Libtreeml < Formula
  desc "C++ cross-platform treeml parser library."
  homepage "https://github.com/cppfw/treeml"
  url "https://github.com/cppfw/treeml/archive/0.1.38.tar.gz"
  sha256 "39589c7123e6c838b3bee38c34fef74c927e150e6d3c5cbdd94f6f0d8ad85c7c"

  depends_on "prorab" => :build
  depends_on "libclargs" => :build
  depends_on "libtst" => :build
  depends_on "libpapki"
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
