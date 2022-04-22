class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/2.0.10.tar.gz"
  sha256 "48e7bbfae9879f5d1d608ee26e75a205e8e09f9b74d235e59a42d772afd4a1e5"

  depends_on "dos2unix" => :build
  depends_on "make"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
