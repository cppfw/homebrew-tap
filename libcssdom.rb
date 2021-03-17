class Libcssdom < Formula
  desc "C++ cross-platform CSS DOM library."
  homepage "https://github.com/cppfw/cssdom"
  url "https://github.com/cppfw/cssdom/archive/0.1.16.tar.gz"
  sha256 "d79a0f5f5cdde5e64e5ea2a728b478f301fd148a38aefd03b3252615e2371184"

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
