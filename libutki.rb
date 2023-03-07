class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.196.tar.gz"
  sha256 "1509c4c6f2b92854a5ab3b4d281c46225605fe30473dc015bce05e0878aafae6"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    # install from src directory because tests require submodules
    system "/usr/local/opt/make/libexec/gnubin/make", "--directory", "src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
	# tests require submodules, so skip those in homebrew recepie
#    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
