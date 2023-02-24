class Libopros < Formula
  desc "C++ cross-platform event waiting library."
  homepage "https://github.com/cppfw/opros"
  url "https://github.com/cppfw/opros/archive/1.0.77.tar.gz"
  sha256 "80cf02b4b7cdf7d1223551986c6ce9281eab502b573939812eb4d64b8ce9764c"

  depends_on "prorab" => :build
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
