class Libaumiks < Formula
  desc "C++ cross-platform audio mixer library."
  homepage "https://github.com/cppfw/aumiks"
  url "https://github.com/cppfw/aumiks/archive/0.3.29.tar.gz"
  sha256 "3eeee19e99a8d8f68f784f0659e1700935e5d7fa27f363b9f547b421bb25a244"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libaudout"
  depends_on "libpapki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  #test do
  #  system "make", "test"
  #end
end
