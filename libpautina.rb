class Libpautina < Formula
  desc "HTTP service C++ library."
  homepage "https://github.com/cppfw/pautina"
  url "https://github.com/cppfw/pautina/archive/0.1.11.tar.gz"
  sha256 "de7fc3ed60c7d49a5461729f3a416d2b56db9314f3eb1e0af719c6ce7ec5820c"

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
