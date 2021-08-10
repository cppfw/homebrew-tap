class ProrabExtra < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab-extra"
  url "https://github.com/cppfw/prorab-extra/archive/0.2.30.tar.gz"
  sha256 "783c9ece38fc3c9c2a7317edd7664969d3e9f00a99df145bfa37bf4222eb2b5f"

  depends_on "make"
  depends_on "prorab"

  # use gmake here because otherwise homebrew uses default Mac's make which is of old version 3.81 which has bugs
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
