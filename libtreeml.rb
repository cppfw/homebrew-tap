class Libtreeml < Formula
  desc "C++ cross-platform treeml parser library."
  homepage "https://github.com/cppfw/treeml"
  url "https://github.com/cppfw/treeml/archive/0.1.46.tar.gz"
  sha256 "ed3a6a03e57f5c29b19a318e5a0c892adfcecc08a5b0d0068601b7b262cebd6a"

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
