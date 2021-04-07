class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.16.3.tar.gz"
  sha256 "d47a803d055274d98ecfc9a08104fee86f8e145b71a9a3361a9f8e4a1b155157"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
