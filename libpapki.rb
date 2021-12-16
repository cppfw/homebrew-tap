class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.115.tar.gz"
  sha256 "f21b62f9ad443f1996035a5e895926b7487fee4e4e95a5899c77387d7ac39d80"

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
