class Libtml < Formula
  desc "C++ cross-platform tml parser library."
  homepage "https://github.com/cppfw/tml"
  url "https://github.com/cppfw/tml/archive/0.3.0.tar.gz"
  sha256 "fda2f2e4511232b0d84f55dd8d0e829d3d18150283eb8cecf5f70d6fc2b134cc"

  depends_on "prorab" => :build
  depends_on "libclargs" => :build
  depends_on "libtst" => :build
  depends_on "bison" => :build
  depends_on "libfsif"
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
