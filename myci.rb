class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.211.tar.gz"
  sha256 "aa991d1e64fd6b54acb2a740ee2c3ca5a02dcdd8591b47d3d5fc20e30700a60f"

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
