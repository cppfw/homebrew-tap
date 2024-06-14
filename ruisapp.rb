class Ruisapp < Formula
  desc "Intrusive C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/ruisapp"
  url "https://github.com/cppfw/ruisapp/archive/0.2.103.tar.gz"
  sha256 "567139836fe1caae94d64b37392dbad229e2cf5a80583ae54a1ef9c87e1d8d55"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libutki"
  depends_on "libpapki"
  depends_on "libopros"
  depends_on "libtml"
  depends_on "glew"
  depends_on "libr4"
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
