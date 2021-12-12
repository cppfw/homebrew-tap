class Libtst < Formula
  desc "C++ testing framework."
  homepage "https://github.com/cppfw/tst"
  url "https://github.com/cppfw/tst/archive/0.3.14.tar.gz"
  sha256 "a7ee63cd66220d8dffe7fdbdbd1ff45fb4481f635b12808fe9bd3725a3d05486"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libnitki" => :build
  depends_on "libutki"
  depends_on "libclargs"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
