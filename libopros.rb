class Libopros < Formula
  desc "C++ cross-platform event waiting library."
  homepage "https://github.com/cppfw/opros"
  url "https://github.com/cppfw/opros/archive/1.0.60.tar.gz"
  sha256 "68d7fe32c7f667a958bb6544952e881a11f88c7c186455ad450355f373314230"

  depends_on "prorab" => :build
  depends_on "libutki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ':/usr/local/bin'
    system "/usr/local/opt/make/libexec/gnubin/make", "install", "PREFIX=#{prefix}"
  end

  test do
    system "/usr/local/opt/make/libexec/gnubin/make", "test"
  end
end
