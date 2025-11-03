class LibruisRenderNull < Formula
  desc "OpenGl renderer for ruis GUI library."
  homepage "https://github.com/cppfw/ruis-render-null"
  url "https://github.com/cppfw/ruis-render-null/archive/0.2.2.tar.gz"
  sha256 "88dd6b3d133f4dbac10b33b3a857dc91f14c79dfb379752abb1578797264e950"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libruis"
  depends_on "libr4"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
