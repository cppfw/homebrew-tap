class Libantigrain < Formula
  desc "Anti-grain geometry C++ library."
  homepage "https://github.com/cppfw/agg"
  url "https://github.com/cppfw/agg/archive/2.8.1.tar.gz"
  sha256 "7292ddbe8060b5e386c3ced0761d5ae5d9731dab614fafb35e7d556cca5da59d"

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
