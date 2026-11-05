class Libmikroxml < Formula
  desc "C++ cross-platform XML parser library."
  homepage "https://github.com/cppfw/mikroxml"
  url "https://github.com/cppfw/mikroxml/archive/0.1.76.tar.gz"
  sha256 "ea87ade21d92fecf7eb9a670715921b6deabbdbb57d68f3edd9953dea879046c"

  depends_on "prorab" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build # needed for tests
  depends_on "libfsif" => :build # needed for tests
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
