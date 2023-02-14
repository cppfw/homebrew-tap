class Libsvgren < Formula
  desc "C++ cross-platform SVG rendering library."
  homepage "https://github.com/igagis/svgren"
  url "https://github.com/igagis/svgren/archive/0.6.3.tar.gz"
  sha256 "5517937fdf8c047869eb6cc3a62811ef2aae4822d0f1b7fa506dc9a438a620b5"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libantigrain" => :build
  depends_on "libr4" => :build
  depends_on "libclargs" => :build
  depends_on "libtst" => :build
  depends_on "libpng" => :build
  depends_on "libsvgdom"
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
