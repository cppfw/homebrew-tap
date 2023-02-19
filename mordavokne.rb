class Mordavokne < Formula
  desc "Intrusive C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/mordavokne"
  url "https://github.com/cppfw/mordavokne/archive/0.2.82.tar.gz"
  sha256 "045deb6129a00a9b336609025d9219169a108d62b2f66be381bfc14591bd690f"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libutki"
  depends_on "libpapki"
  depends_on "libopros"
  depends_on "libtreeml"
  depends_on "glew"
  depends_on "libr4"
  depends_on "libmorda"
  depends_on "libmorda-render-opengl"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
