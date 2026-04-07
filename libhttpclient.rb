class Libhttpclient < Formula
  desc "C++ cross-platform HTTP client library."
  homepage "https://github.com/cppfw/httpclient"
  url "https://github.com/cppfw/httpclient/archive/0.1.25.tar.gz"
  sha256 "b6eb44d25528e82b5612fa9baeca86819a041a44b8a591c37e6b799acda28484"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libhttpmodel"
  depends_on "libnitki"
  depends_on "curl"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
