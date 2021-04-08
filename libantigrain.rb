class Libantigrain < Formula
  desc "Anti-grain geometry C++ library."
  homepage "https://github.com/cppfw/agg"
  url "https://github.com/cppfw/agg/archive/2.8.3.tar.gz"
  sha256 "bf0be20cd02c0d274a3e5988f8965802197e3f855410bb06dbba6b40672e4d93"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
