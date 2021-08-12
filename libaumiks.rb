class Libaumiks < Formula
  desc "C++ cross-platform audio mixer library."
  homepage "https://github.com/cppfw/aumiks"
  url "https://github.com/cppfw/aumiks/archive/0.3.31.tar.gz"
  sha256 "084bbb932ca4255f32f4845d6bf52d4870d33ac5cb4ccaba92c743643944090c"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libaudout"
  depends_on "libpapki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  #test do
  #  system "/usr/local/opt/make/libexec/gnubin/make", "test"
  #end
end
