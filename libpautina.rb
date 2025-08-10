class Libpautina < Formula
  desc "HTTP service C++ library."
  homepage "https://github.com/cppfw/pautina"
  url "https://github.com/cppfw/pautina/archive/0.1.12.tar.gz"
  sha256 "96ff84e70c4a35ca91d95c339e5a50f42fde3b2a27f1f373bdac48d35638e9c0"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libtcpserver"
  depends_on "libhttpmodel"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
