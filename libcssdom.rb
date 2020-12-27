class Libcssdom < Formula
  desc "C++ cross-platform CSS DOM library."
  homepage "https://github.com/cppfw/cssdom"
  url "https://github.com/cppfw/cssdom/archive/0.1.13.tar.gz"
  sha256 "2a8c0e54e3d42c4642279ff7d381bdbc29423e8ad3e2bed7bcca2105b2141371"

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
