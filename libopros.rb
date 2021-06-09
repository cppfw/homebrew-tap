class Libopros < Formula
  desc "C++ cross-platform event waiting library."
  homepage "https://github.com/cppfw/opros"
  url "https://github.com/cppfw/opros/archive/1.0.53.tar.gz"
  sha256 "b426b7ffd8bed629570e3ab00861541a32bb2fc2e2c2d0d86d4a0ad588f5eabc"

  depends_on "prorab" => :build
  depends_on "libutki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "-f", "src/makefile", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
