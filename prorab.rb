class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.19.1.tar.gz"
  sha256 "cc5e93b1752cd4caecdff6205d31ec30274366f2a52ea5cdaa118f1bb431b674"

  depends_on "dos2unix" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
