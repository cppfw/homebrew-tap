class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.155.tar.gz"
  sha256 "419098325604cbbdc0a683b3d344ac58c7cc4a313cf026b42fab15f1e5685098"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "--directory", "src", "install", "PREFIX=#{prefix}"
  end

  test do
	# tests require submodules, so skip those in homebrew recepie
#    system "make", "test"
  end
end
