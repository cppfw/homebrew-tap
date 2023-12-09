class Libaudout < Formula
  desc "C++ cross-platform audio output library."
  homepage "https://github.com/cppfw/audout"
  url "https://github.com/cppfw/audout/archive/0.3.41.tar.gz"
  sha256 "6c27e56d55ae3a7847d6ad02473a0ce73f0df6be68500ca05d496347c351a938"

  depends_on "prorab" => :build
  depends_on "libnitki" => :build
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81  
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
