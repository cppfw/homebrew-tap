class Libsetka < Formula
  desc "C++ cross-platform network library."
  homepage "https://github.com/cppfw/setka"
  url "https://github.com/cppfw/setka/archive/1.0.34.tar.gz"
  sha256 "994bfa5cbf1ad5b981382f7bd5f116a82c0bf676c93daa8ccff6f94e7ca0a5b1"

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
