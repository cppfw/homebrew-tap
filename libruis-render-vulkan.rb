class LibruisRenderVulkan < Formula
  desc "Vulkan renderer for ruis GUI library."
  homepage "https://github.com/cppfw/ruis-render-vulkan"
  url "https://github.com/cppfw/ruis-render-vulkan/archive/0.0.1.tar.gz"
  sha256 "2d363c54ea1f1baabb342d1dfc19c20a5a5347e056089ece2f3a6c7ea58a3bbc"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "libruis"
  depends_on "molten-vk"
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
