class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.154.tar.gz"
  sha256 "ef1c1e2909af3391f99dab3adf20c48a0ffbbd4125a13fdfceaeb22524951aa8"

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
