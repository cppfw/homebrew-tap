class Libcssom < Formula
  desc "C++ cross-platform CSS DOM library."
  homepage "https://github.com/cppfw/cssom"
  url "https://github.com/cppfw/cssom/archive/0.1.27.tar.gz"
  sha256 "726f4f8a1a281b8b66c73d60cfe4b0484c38d2470258c39dd23fbcf27eca4746"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "pkg-config" => :build
  depends_on "libtst" => :build
  depends_on "libclargs" => :build
  depends_on "libpapki"
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
