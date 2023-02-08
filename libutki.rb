class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.184.tar.gz"
  sha256 "a9881da32d364904f80875919c2140dec5828993eafaee993165912f575e0ec6"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    # install from src directory because tests require submodules
    system "/usr/local/opt/make/libexec/gnubin/make", "--directory", "src", "install", "PREFIX=#{prefix}"
  end

  test do
	# tests require submodules, so skip those in homebrew recepie
#    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
