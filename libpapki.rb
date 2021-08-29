class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.110.tar.gz"
  sha256 "d65d3dde0b237e6a0e07ceefff6c06ac8c26d5a0a351b8a55c88f8d994b95599"

  depends_on "prorab" => :build
  depends_on "libutki"
  depends_on "zlib"
  
  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "--directory", "src", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
