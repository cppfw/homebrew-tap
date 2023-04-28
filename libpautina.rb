class Libpautina < Formula
  desc "HTTP service C++ library."
  homepage "https://github.com/cppfw/pautina"
  url "https://github.com/cppfw/pautina/archive/0.1.1.tar.gz"
  sha256 "64013ce5162132cc737e478c824cc17706c4f5e8a1aa764369ef58c99e967f05"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libtst" => :build
  depends_on "libutki"
  depends_on "libhttpmodel"
  depends_on "libsetka"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    # install from src directory because tests require submodules
    system "/usr/local/opt/make/libexec/gnubin/make", "--directory", "src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
