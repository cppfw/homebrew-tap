class Libcssdom < Formula
  desc "C++ cross-platform CSS DOM library."
  homepage "https://github.com/cppfw/cssdom"
  url "https://github.com/cppfw/cssdom/archive/0.1.14.tar.gz"
  sha256 "c452487e46ce9266108520ed629fc5225ecd656e2afac227073ea7872c6993dd"

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
