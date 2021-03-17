class Libsetka < Formula
  desc "C++ cross-platform network library."
  homepage "https://github.com/cppfw/setka"
  url "https://github.com/cppfw/setka/archive/1.0.20.tar.gz"
  sha256 "92d3eb48c0315d53b8fd8923792b40ba393b046a206cf3240ef1ac26f87ae2e1"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libnitki"
  depends_on "libopros"
  depends_on "libutki"
  depends_on "libpapki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  # TODO: uncomment
  #test do
  #  system "make", "test"
  #end
end
