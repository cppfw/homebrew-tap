class ProrabExtra < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab-extra"
  url "https://github.com/cppfw/prorab-extra/archive/0.2.12.tar.gz"
  sha256 "75d8429e75db103d74b6767e2da3aa814dd9ab6f9179f350baa802a6720db9e6"

  depends_on "prorab"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
