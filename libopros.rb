class Libopros < Formula
  desc "C++ cross-platform event waiting library."
  homepage "https://github.com/cppfw/opros"
  url "https://github.com/cppfw/opros/archive/1.0.97.tar.gz"
  sha256 "6bb38254fc4a6f477739ed419d35be33f5852341f3b2cf3eaa66404f98cf79ec"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
