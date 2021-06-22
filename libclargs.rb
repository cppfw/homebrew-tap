class Libclargs < Formula
  desc "C++ cross-platform library for parsing command line arguments."
  homepage "https://github.com/cppfw/clargs"
  url "https://github.com/cppfw/clargs/archive/0.2.27.tar.gz"
  sha256 "88c7b03b2ded93650eb6e420590188eb472b9fd6f282eddbf53280eabc24a19d"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
