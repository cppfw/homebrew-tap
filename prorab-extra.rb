class ProrabExtra < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab-extra"
  url "https://github.com/cppfw/prorab-extra/archive/0.2.29.tar.gz"
  sha256 "2051d432d664c47f7debc67e3ea0c31896bdc67ef24d9beb050a766d96c23b04"

  depends_on "prorab"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
