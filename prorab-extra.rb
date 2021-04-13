class ProrabExtra < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab-extra"
  url "https://github.com/cppfw/prorab-extra/archive/0.2.16.tar.gz"
  sha256 "4f544ecee86e6ac9acc748bd5f5ab070467389d2ba6b59fcbdb2308bfde1338f"

  depends_on "prorab"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-C", "src", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "make", "test"
  end
end
