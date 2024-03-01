class Liburlmodel < Formula
  desc "URL model C++ library."
  homepage "https://github.com/cppfw/urlmodel"
  url "https://github.com/cppfw/urlmodel/archive/0.1.7.tar.gz"
  sha256 "0ad4f3ea7d1f5f9be6e1824af26d36ae1f0c94d4a0afeadc1d6633f7e594841a"

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
