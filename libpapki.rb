class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.126.tar.gz"
  sha256 "6cc5ba1d2d853856d3352b2eb3364379ea2a257ee0f042622e94372b2e3b5a79"

  depends_on "prorab" => :build
  depends_on "libutki"
  depends_on "zlib"
  
  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "--directory", "src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
