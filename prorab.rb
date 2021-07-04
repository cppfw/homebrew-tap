class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.18.5.tar.gz"
  sha256 "a01435afba49a3d3fc75e739cd08f3d587e202d4075c12a695a72a03c2833fd2"

  depends_on "dos2unix" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
