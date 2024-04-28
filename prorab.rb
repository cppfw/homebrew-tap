class Prorab < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab"
  url "https://github.com/cppfw/prorab/archive/2.0.24.tar.gz"
  sha256 "eca8f8e46db271565e140018a111991a871ca7d939d0310ae885a3ef3763d0fc"

  depends_on "dos2unix" => :build
  depends_on "make"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "gmake", "--include-dir=$(brew --prefix)/include", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "gmake", "--include-dir=$(brew --prefix)/include", "test"
  end
end
