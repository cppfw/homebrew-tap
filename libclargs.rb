class Libclargs < Formula
  desc "C++ cross-platform library for parsing command line arguments."
  homepage "https://github.com/cppfw/clargs"
  url "https://github.com/cppfw/clargs/archive/0.2.42.tar.gz"
  sha256 "3a3b2ebe2ac7cc85cecf4150c5cf5f86f70fb83d37586f32e4ab098eb1a2ad95"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "--directory", "src", "install", "PREFIX=#{prefix}"
  end

  test do
    # tests require submodules, so skip those in homebrew recepie
#    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
