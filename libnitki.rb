class Libnitki < Formula
  desc "C++ cross-platform threading library."
  homepage "https://github.com/cppfw/nitki"
  url "https://github.com/cppfw/nitki/archive/1.0.81.tar.gz"
  sha256 "22742af6a1875548c3d3569bace368c6e57b3ceb53b819af4e0ab656b56e0834"

  depends_on "prorab" => :build
  depends_on "libopros"
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
