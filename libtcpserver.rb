class Libtcpserver < Formula
  desc "HTTP service C++ library."
  homepage "https://github.com/cppfw/tcpserver"
  url "https://github.com/cppfw/tcpserver/archive/0.1.9.tar.gz"
  sha256 "946ceec7f0aaec044dc68cc0b9c5a7138e815233fb96563e1028ee8a76cbc66a"

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
