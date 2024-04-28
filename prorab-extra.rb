class ProrabExtra < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab-extra"
  url "https://github.com/cppfw/prorab-extra/archive/0.2.51.tar.gz"
  sha256 "8f027b3d03a440a1ec999dbdce6259989d9cd42f2ee536c425986eece940f447"

  depends_on "make"
  depends_on "myci"
  depends_on "prorab"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "gmake", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "gmake", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
