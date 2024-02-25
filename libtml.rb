class Libtml < Formula
  desc "C++ cross-platform tml parser library."
  homepage "https://github.com/cppfw/tml"
  url "https://github.com/cppfw/tml/archive/0.2.15.tar.gz"
  sha256 "4812ec69c12bed33f7cac8b2ecb044a3669d86e4bebe138a3cb18a324a242655"

  depends_on "prorab" => :build
  depends_on "libclargs" => :build
  depends_on "libtst" => :build
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
