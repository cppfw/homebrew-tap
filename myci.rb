class Myci < Formula
  desc "Helper CI scripts."
  homepage "https://github.com/cppfw/myci"
  url "https://github.com/cppfw/myci/archive/0.1.176.tar.gz"
  sha256 "5937cb018685690d4094968e94e7c1e1f06a31a553907d3ec963be0f67fdb140"

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
