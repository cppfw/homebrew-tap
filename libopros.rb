class Libopros < Formula
  desc "C++ cross-platform event waiting library."
  homepage "https://github.com/cppfw/opros"
  url "https://github.com/cppfw/opros/archive/1.0.84.tar.gz"
  sha256 "95477ac45b5d00dca6cb5b348b17a594f9eb774fa392725ff15f4babf7155d10"

  depends_on "prorab" => :build
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
