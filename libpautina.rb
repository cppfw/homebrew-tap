class Libpautina < Formula
  desc "HTTP service C++ library."
  homepage "https://github.com/cppfw/pautina"
  url "https://github.com/cppfw/pautina/archive/0.1.8.tar.gz"
  sha256 "ee5aacca16d9841b7e90d616d0c76df7b970c89f4b1c2732871994aac03f6914"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libtcpserver"
  depends_on "libhttpmodel"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    # install from src directory because tests require submodules
    system "/usr/local/opt/make/libexec/gnubin/make", "--directory", "src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
