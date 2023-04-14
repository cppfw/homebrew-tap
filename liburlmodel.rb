class Liburlmodel < Formula
  desc "URL model C++ library."
  homepage "https://github.com/cppfw/urlmodel"
  url "https://github.com/cppfw/urlmodel/archive/0.1.2.tar.gz"
  sha256 "b8b26c9a58793852a00af0061ed3c47cbfb2ba1e04aa8480e1673dac695b6d93"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libutki"

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
