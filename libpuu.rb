class Libpuu < Formula
  desc "C++ cross-platform puu parser library."
  homepage "https://github.com/cppfw/puu"
  url "https://github.com/cppfw/puu/archive/0.1.24.tar.gz"
  sha256 "d63dff315a0a216e22523a6aaf558c6ff6389a7f2c6a6b4e4bd093e3ccfb96d5"

  depends_on "prorab" => :build
  depends_on "libclargs" => :build
  depends_on "libpapki"
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
