class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.237.tar.gz"
  sha256 "8b60395e3b475f1644261d7c816f1e988e39f1fadd97536a25cf172262692b48"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "gmake", "--version"
    # install from src directory because tests require submodules
    system "gmake", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "--directory=src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
	# tests require submodules, so skip those in homebrew recepie
#    system "gmake", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
