class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.18.1.tar.gz"
  sha256 "cf9ddd914f527a9e3362c6af73b08d515131abf39e0a092ab26b1a517dce7d78"

  depends_on "dos2unix" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
