class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.19.3.tar.gz"
  sha256 "07952046e1342cdacd36c9f1910933c2a4870c2d4d11e5c9cd6568d63854ad49"

  depends_on "dos2unix" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
