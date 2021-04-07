class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.88.tar.gz"
  sha256 "08b969695d417b862e08c5acba362d890a0085cef30f8be96612ad3d2e26e500"

  depends_on "md5sha1sum"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "test"
  end
end
