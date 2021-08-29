class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/2.0.6.tar.gz"
  sha256 "d8a262a55bb7a1c5b4ce6b406dc290a40e74cc440c5c6439c52b5c36b3ef8c08"

  depends_on "dos2unix" => :build
  depends_on "make"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
