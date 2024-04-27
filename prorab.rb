class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/2.0.23.tar.gz"
  sha256 "c10678e098c36ebf21b5ca1858a9e5c0b507541628bb061e54d9be29ad3204c4"

  depends_on "dos2unix" => :build
  depends_on "make"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "gmake", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "gmake", "test"
  end
end
