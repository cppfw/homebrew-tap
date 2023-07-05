class Libhttpmodel < Formula
  desc "HTTP model C++ library."
  homepage "https://github.com/cppfw/httpmodel"
  url "https://github.com/cppfw/httpmodel/archive/0.1.7.tar.gz"
  sha256 "3a87e4b82bfac1a73a5b5534f8ef6356fc13161c8553cbb9c8fe627745c8d435"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "liburlmodel"

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
