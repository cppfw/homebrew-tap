class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.105.tar.gz"
  sha256 "5bcf97df003002ed5bf45384f83178ad85777040cab76a3a9a340e5dc70906b1"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
