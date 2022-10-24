class Libtst < Formula
  desc "C++ testing framework."
  homepage "https://github.com/cppfw/tst"
  url "https://github.com/cppfw/tst/archive/0.3.19.tar.gz"
  sha256 "7f25f8933121b1f92d125de9ad4e6fd2bc046cfc6bbfa3df785bae4500946e13"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libnitki" => :build
  depends_on "libutki"
  depends_on "libclargs"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
