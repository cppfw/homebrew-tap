class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/2.0.4.tar.gz"
  sha256 "4eb983732b5928cd061ec7912b6efe98fbf68ae77b7131346b2c6ce79d9de73b"

  depends_on "dos2unix" => :build
  depends_on "make"

  # use gmake here because otherwise homebrew uses default Mac's make which is of old version 3.81 which has bugs
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
