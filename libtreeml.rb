class Libtreeml < Formula
  desc "C++ cross-platform treeml parser library."
  homepage "https://github.com/cppfw/treeml"
  url "https://github.com/cppfw/treeml/archive/0.1.40.tar.gz"
  sha256 "c42b2b97ed4e138a50b6720c5bd263fc206241a4d5b48d2cb323662625371bae"

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
