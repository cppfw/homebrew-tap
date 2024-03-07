class Ruisapp < Formula
  desc "Intrusive C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/ruisapp"
  url "https://github.com/cppfw/ruisapp/archive/0.2.92.tar.gz"
  sha256 "c18ac1c10613cd597d9f0864656bab4f1b612265430d9777f50d774a94997fa2"

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
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
