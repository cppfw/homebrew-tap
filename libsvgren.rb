class Libsvgren < Formula
  desc "C++ cross-platform SVG rendering library."
  homepage "https://github.com/cppfw/svgren"
  url "https://github.com/cppfw/svgren/archive/0.6.27.tar.gz"
  sha256 "5f35b7ab66a22097e6451328604bb0a1e9bc991c2758fa08baaf0896d7ee80bd"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libveg" => :build
  depends_on "libr4" => :build
  depends_on "libclargs" => :build
  depends_on "libtst" => :build
  depends_on "libpng" => :build
  depends_on "librasterimage"
  depends_on "libsvgdom"
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
