class Libutki < Formula
  desc "C++ utility functions library. Stuff missing from std:: namespace."
  homepage "https://github.com/cppfw/utki"
  url "https://github.com/cppfw/utki/archive/1.1.246.tar.gz"
  sha256 "4e92f32fe2beeb4eb3b7e466449f20d8d1bbc8674b08c06c5f5760ab2d39a801"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    # install from src directory because tests require submodules
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "--directory=src", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
	# tests require submodules, so skip those in homebrew recepie
#    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
