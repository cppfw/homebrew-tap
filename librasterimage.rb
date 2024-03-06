class Librasterimage < Formula
  desc "C++ cross-platform SVG rendering library."
  homepage "https://github.com/igagis/rasterimage"
  url "https://github.com/igagis/rasterimage/archive/0.1.13.tar.gz"
  sha256 "033f6f8a814c5b87f481b0a00423217b3fd679c5e5d360ac2b81393466ba93d8"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libtst" => :build
  depends_on "libpng"
  depends_on "jpeg"
  depends_on "libutki"
  depends_on "libpapki"
  depends_on "libr4"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
