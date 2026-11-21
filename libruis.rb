class Libruis < Formula
  desc "C++ cross-platform GUI library."
  homepage "https://github.com/cppfw/ruis"
  url "https://github.com/cppfw/ruis/archive/0.6.28.tar.gz"
  sha256 "6ec40283b63a3f56a456acf841186b8d8db7445f9274aead2bb78e56dc0633f2"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "glew" => :build
  depends_on "libnitki" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libfsif"
  depends_on "libtml"
  depends_on "librasterimage"
  depends_on "z"
  depends_on "freetype"
  depends_on "libr4"
  depends_on "libsvgdom"
  depends_on "libsvgren"
  depends_on "libsetka"
  
  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
