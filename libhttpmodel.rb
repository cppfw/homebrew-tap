class Libhttpmodel < Formula
  desc "HTTP model C++ library."
  homepage "https://github.com/cppfw/httpmodel"
  url "https://github.com/cppfw/httpmodel/archive/0.1.15.tar.gz"
  sha256 "bd040d2899ef964096c937ead7e63149253f7e439eec031b508c2ef60a91cdd5"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "liburlmodel"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
