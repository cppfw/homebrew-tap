class Libaumiks < Formula
  desc "C++ cross-platform audio mixer library."
  homepage "https://github.com/cppfw/aumiks"
  url "https://github.com/cppfw/aumiks/archive/0.3.36.tar.gz"
  sha256 "8afb958b3a3978558202db1ce38a582c605f4701d7489c82e526a07c37813f56"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libaudout"
  depends_on "libpapki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  #test do
  #  system "/usr/local/opt/make/libexec/gnubin/make", "test"
  #end
end
