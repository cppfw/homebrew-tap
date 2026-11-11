class Ruisapp < Formula
  desc "Intrusive C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/ruisapp"
  url "https://github.com/cppfw/ruisapp/archive/0.2.146.tar.gz"
  sha256 "4009648ba60dd017edd9ea8aa7e7a635c1dd55c892d9f3afb73bbe0fc20a3c5b"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libutki"
  depends_on "libfsif"
  depends_on "libopros"
  depends_on "libtml"
  depends_on "glew"
  depends_on "libr4"
  depends_on "libsetka"
  depends_on "libruis"
  depends_on "libruis-render-opengl"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
