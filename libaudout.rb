class Libaudout < Formula
  desc "C++ cross-platform audio output library."
  homepage "https://github.com/cppfw/audout"
  url "https://github.com/cppfw/audout/archive/0.3.44.tar.gz"
  sha256 "04f3f1cb3d59bffd1e54865b6bb8ec366eddbe07c4698df649f2a3bfe2a95f11"

  depends_on "prorab" => :build
  depends_on "libnitki" => :build
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
