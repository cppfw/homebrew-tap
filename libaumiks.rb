class Libaumiks < Formula
  desc "C++ cross-platform audio mixer library."
  homepage "https://github.com/cppfw/aumiks"
  url "https://github.com/cppfw/aumiks/archive/0.3.38.tar.gz"
  sha256 "d0e61d7e63fb92cff182fe6944bf4ace9653bf5e2ee06a5be84ab31dc838c744"

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
