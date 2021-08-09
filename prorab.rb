class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/2.0.3.tar.gz"
  sha256 "7654fceb5f904ee31ac43548edf1474730c2006832bedc92a25193ab1851faab"

  depends_on "dos2unix" => :build
  depends_on "make"

  # use gmake here because otherwise homebrew uses default Mac's make which is of old version 3.81 which has bugs
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "gmake", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "gmake", "test"
  end
end
