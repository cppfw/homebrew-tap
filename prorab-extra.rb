class ProrabExtra < Formula
  desc "GNU make based build system."
  homepage "https://github.com/cppfw/prorab-extra"
  url "https://github.com/cppfw/prorab-extra/archive/0.2.50.tar.gz"
  sha256 "beb7efef644051fbb8a739e1126d2e5e4d5c7058f0e646218d3c9c11bf8ce93f"

  depends_on "make"
  depends_on "myci"
  depends_on "prorab"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "gmake", "--include-dir=$(brew --prefix)/include", "install", "PREFIX=#{prefix}"
  end
  
  test do
    system "gmake", "--include-dir=$(brew --prefix)/include", "test"
  end
end
