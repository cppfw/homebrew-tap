class Libpautina < Formula
  desc "HTTP service C++ library."
  homepage "https://github.com/cppfw/pautina"
  url "https://github.com/cppfw/pautina/archive/0.1.10.tar.gz"
  sha256 "2c5c2b88ee9f535e0f34c887bacd77f0943634f761b2efa70547e2a9396c3463"

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
