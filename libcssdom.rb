class Libcssdom < Formula
  desc "C++ cross-platform CSS DOM library."
  homepage "https://github.com/cppfw/cssdom"
  url "https://github.com/cppfw/cssdom/archive/0.1.12.tar.gz"
  sha256 "7f85f6ed598b799e3d248d44589adf1175cbf0569e815c050b28c30c71c22437"

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
