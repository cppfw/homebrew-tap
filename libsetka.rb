class Libsetka < Formula
  desc "C++ cross-platform network library."
  homepage "https://github.com/cppfw/setka"
  url "https://github.com/cppfw/setka/archive/1.0.19.tar.gz"
  sha256 "dbc9214bdd32e3c9d8ca16eaf41502660a8c933687cc0073f3a7ebdfc698c7c5"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libnitki"
  depends_on "libopros"
  depends_on "libutki"
  depends_on "libpapki"

  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "make", "install", "PREFIX=#{prefix}"
  end

  # TODO: uncomment
  #test do
  #  system "make", "test"
  #end
end
