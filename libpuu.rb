class Libpuu < Formula
  desc "C++ cross-platform puu parser library."
  homepage "https://github.com/cppfw/puu"
  url "https://github.com/cppfw/puu/archive/0.1.25.tar.gz"
  sha256 "136738b9f732c0431a740b078089d1fd0d6743fb245eed7db3cd85324405e5a5"

  depends_on "prorab" => :build
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
