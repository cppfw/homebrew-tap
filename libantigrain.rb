class Libantigrain < Formula
  desc "Anti-grain geometry C++ library."
  homepage "https://github.com/cppfw/agg"
  url "https://github.com/cppfw/agg/archive/2.8.24.tar.gz"
  sha256 "af9d544cb8ce1edb31edf990dba140dbac9f09fb979cf8193b2c6b232cc1d28c"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
