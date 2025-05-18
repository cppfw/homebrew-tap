class Libtst < Formula
  desc "C++ testing framework."
  homepage "https://github.com/cppfw/tst"
  url "https://github.com/cppfw/tst/archive/0.3.46.tar.gz"
  sha256 "b8ae885b0616f93ec254c8a21ce144a023629358aaa4a63374d6d6c991e5a281"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkgconf" => :build # NOTE: 'pkg-config' formula is deprecated
  depends_on "libnitki" => :build
  depends_on "libutki"
  depends_on "libclargs"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
