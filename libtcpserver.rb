class Libtcpserver < Formula
  desc "HTTP service C++ library."
  homepage "https://github.com/cppfw/tcpserver"
  url "https://github.com/cppfw/tcpserver/archive/0.1.2.tar.gz"
  sha256 "c648ad93704f57b5db48f60212eba654dec6ea27495c003b764c48ce956aa6cb"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libsetka"

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
