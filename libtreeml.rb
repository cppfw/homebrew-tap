class Libtreeml < Formula
  desc "C++ cross-platform treeml parser library."
  homepage "https://github.com/cppfw/treeml"
  url "https://github.com/cppfw/treeml/archive/0.2.14.tar.gz"
  sha256 "6184fea277175f0bb4278baa1751539a546c602fad154f612473552d4bdbe4e0"

  depends_on "prorab" => :build
  depends_on "libclargs" => :build
  depends_on "libtst" => :build
  depends_on "libpapki"
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
