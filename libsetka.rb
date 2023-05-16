class Libsetka < Formula
  desc "C++ cross-platform network library."
  homepage "https://github.com/cppfw/setka"
  url "https://github.com/cppfw/setka/archive/1.0.35.tar.gz"
  sha256 "1f8915d9a45edc5d97d1ab9f9607b4c68d5bf1b37dcaddcde178011b94a43ee7"

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
