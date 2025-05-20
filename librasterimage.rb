class Librasterimage < Formula
  desc "C++ cross-platform SVG rendering library."
  homepage "https://github.com/igagis/rasterimage"
  url "https://github.com/igagis/rasterimage/archive/0.1.35.tar.gz"
  sha256 "6f51e6db0c30a733037ded1619cde898c9eb2474877e37243cfdc49a5340209e"

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
