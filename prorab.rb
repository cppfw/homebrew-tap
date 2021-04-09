class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/1.17.0.tar.gz"
  sha256 "cb23bdd68f5e0b0a29eebc2edc90e1e2401e0eaf5f82eb6cc90fcb3b2959ee8a"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
