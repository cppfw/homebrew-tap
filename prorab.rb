class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.15.23.tar.gz"
  sha256 "0dc876eb044a6a013b9c83a68f28eac7daba048ff0f10a1cc7b75e466ce04dfe"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
