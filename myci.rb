class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.204.tar.gz"
  sha256 "b6a54bd82a4cba33015f0ecff2edeaf2d2817c11ba9f978513b9c53c3101c429"

  depends_on "md5sha1sum"
  depends_on "curl"

  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}"
  end

  test do
    system "make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
