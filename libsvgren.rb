class Libsvgren < Formula
  desc "C++ cross-platform SVG rendering library."
  homepage "https://github.com/igagis/svgren"
  url "https://github.com/igagis/svgren/archive/0.5.4.tar.gz"
  sha256 "357cb7bdebbdecfec79612f7d91f1ceafdd4b573592e1eed5dadca635222ee02"

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
