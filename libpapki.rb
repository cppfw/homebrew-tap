class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.156.tar.gz"
  sha256 "c17302e0886219d4743e1954a86cf2cf55f78b4abc106886a07b53c13665af8e"

  depends_on "prorab" => :build
  depends_on "libutki"
  depends_on "zlib"
  
  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "--directory=src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
