class Libtml < Formula
  desc "C++ cross-platform tml parser library."
  homepage "https://github.com/cppfw/tml"
  url "https://github.com/cppfw/tml/archive/0.2.22.tar.gz"
  sha256 "903a20aa43af270e3a5631bdb1761660144f8bcc4b9451554e2cc7c51d075572"

  depends_on "prorab" => :build
  depends_on "libclargs" => :build
  depends_on "libtst" => :build
  depends_on "libpapki"
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
