class Libsvgren < Formula
  desc "C++ cross-platform SVG rendering library."
  homepage "https://github.com/igagis/svgren"
  url "https://github.com/igagis/svgren/archive/0.5.8.tar.gz"
  sha256 "165e6fec446f5821dcaab7ee4d28b3f000c2bbb94de0ddfb022bb912cdd27ff1"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libantigrain" => :build
  depends_on "libr4" => :build
  depends_on "libclargs" => :build
  depends_on "libpng" => :build
  depends_on "libsvgdom"
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
