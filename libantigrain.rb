class Libantigrain < Formula
  desc "Anti-grain geometry C++ library."
  homepage "https://github.com/cppfw/agg"
  url "https://github.com/cppfw/agg/archive/2.8.9.tar.gz"
  sha256 "0cb5e4f85866cc141bbe1e01d8d39570ac93285ce2b139aa2d72ca42f47b7b93"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
