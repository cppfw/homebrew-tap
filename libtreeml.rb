class Libtreeml < Formula
  desc "C++ cross-platform treeml parser library."
  homepage "https://github.com/cppfw/treeml"
  url "https://github.com/cppfw/treeml/archive/0.1.43.tar.gz"
  sha256 "c067d5183fd18fe6c197270b177ff631db729ee6989b6805bcf2e223018cc1e2"

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
