class Libhttpmodel < Formula
  desc "HTTP model C++ library."
  homepage "https://github.com/cppfw/httpmodel"
  url "https://github.com/cppfw/httpmodel/archive/0.1.6.tar.gz"
  sha256 "9b87cd2d2e542889cade285bbacb62ccb87ab806d38fb9005a669eaa45057bdb"

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
