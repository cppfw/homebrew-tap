class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.236.tar.gz"
  sha256 "2ce572177ca148678da2e1bc5cb77f76fd4a810ad0b8ce0cc660a94bf80a83ac"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    # install from src directory because tests require submodules
    system "gmake", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "--directory=src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
	# tests require submodules, so skip those in homebrew recepie
#    system "gmake", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
