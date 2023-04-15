class Libsetka < Formula
  desc "C++ cross-platform network library."
  homepage "https://github.com/cppfw/setka"
  url "https://github.com/cppfw/setka/archive/1.0.33.tar.gz"
  sha256 "524a927fa1c8ea5b7fb81e7bcce290d30d0b7a3a49cc0f81fd1b63a78dd44a12"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libnitki"
  depends_on "libopros"
  depends_on "libutki"
  depends_on "libpapki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}", "lint=off"
  end

  # TODO: uncomment
  #test do
  #  system "/usr/local/opt/make/libexec/gnubin/make", "test"
  #end
end
