class Libhttpmodel < Formula
  desc "HTTP model C++ library."
  homepage "https://github.com/cppfw/httpmodel"
  url "https://github.com/cppfw/httpmodel/archive/0.1.11.tar.gz"
  sha256 "76e8ac96a2b1333af4a6b10750c3f3c53ea71f807e521cd7261b387c7fc0b69a"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "liburlmodel"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
