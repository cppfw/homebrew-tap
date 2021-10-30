class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.47.tar.gz"
  sha256 "ed9bb8d5f2d976881f2b9d947ff6dcd864e625e11477b11f6e952b5136e2501a"

  depends_on "prorab" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build # needed for tests
  depends_on "libpapki" => :build # needed for tests
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
