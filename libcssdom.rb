class Libcssdom < Formula
  desc "C++ cross-platform CSS DOM library."
  homepage "https://github.com/cppfw/cssdom"
  url "https://github.com/cppfw/cssdom/archive/0.1.11.tar.gz"
  sha256 "aee14125c1ae88747548dc50146934bf11f1c60cc1c302af5bfa7f59e97155b5"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libclargs" => :build
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
