class LibruisRenderVulkan < Formula
  desc "Vulkan renderer for ruis GUI library."
  homepage "https://github.com/cppfw/ruis-render-vulkan"
  url "https://github.com/cppfw/ruis-render-vulkan/archive/0.0.2.tar.gz"
  sha256 "01b7c36aaf22e9cf66dd528c8976988b896a3f593f5b2416cc840cbd09cf83dc"

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
