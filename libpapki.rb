class Libpapki < Formula
  desc "C++ cross-platform file system library."
  homepage "https://github.com/cppfw/papki"
  url "https://github.com/cppfw/papki/archive/1.0.136.tar.gz"
  sha256 "cd71cb6ec8b95378b6066f38b5fbe2920b6d638cf06f11fa07d8ddd10f876d08"

  depends_on "prorab" => :build
  depends_on "libutki"
  depends_on "zlib"
  
  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "--directory", "src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
