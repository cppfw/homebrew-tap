class ProrabExtra < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab-extra"
  url "https://github.com/cppfw/prorab-extra/archive/0.2.44.tar.gz"
  sha256 "09a7762e61df7711846b600de3a35d43a301db7fdd62e2f4802c5bc219d91116"

  depends_on "make"
  depends_on "myci"
  depends_on "prorab"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
