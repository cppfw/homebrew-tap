class Librasterimage < Formula
  desc "C++ cross-platform SVG rendering library."
  homepage "https://github.com/igagis/rasterimage"
  url "https://github.com/igagis/rasterimage/archive/0.1.32.tar.gz"
  sha256 "311d50c63c04890750b9a03cff908080969270584ac6e0043901b931642401c6"

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
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
