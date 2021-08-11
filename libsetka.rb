class Libsetka < Formula
  desc "C++ cross-platform network library."
  homepage "https://github.com/cppfw/setka"
  url "https://github.com/cppfw/setka/archive/1.0.23.tar.gz"
  sha256 "970de4f4b4cb4a0690b71dfb9589f2e5c1ce9eb6093bb142167c70dbb01b2509"

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
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  # TODO: uncomment
  #test do
  #  system "/usr/local/opt/make/libexec/gnubin/make", "test"
  #end
end
