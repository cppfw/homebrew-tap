class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.18.4.tar.gz"
  sha256 "e1cffa76609183beff17e668f7aa2d35f7d15e4f160093480c4bdcee6d2af87b"

  depends_on "dos2unix" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
