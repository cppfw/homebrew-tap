class Mordavokne < Formula
  desc "Intrusive C++ cross-platform OpenGL based GUI library."
  homepage "https://github.com/cppfw/mordavokne"
  url "https://github.com/cppfw/mordavokne/archive/0.2.70.tar.gz"
  sha256 "26064858ce91334336c02218ce5516647d26b89787ab9216025c589e0faf9c7a"

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

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  #test do
  #  system "make", "test"
  #end
end
