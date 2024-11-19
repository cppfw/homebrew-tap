class Libtcpserver < Formula
  desc "HTTP service C++ library."
  homepage "https://github.com/cppfw/tcpserver"
  url "https://github.com/cppfw/tcpserver/archive/0.1.5.tar.gz"
  sha256 "971fd0546ece2976d115a3a97eeed048451561527e3475027e520455ef35c06d"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libsetka"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
