class Libaumiks < Formula
  desc "C++ cross-platform audio mixer library."
  homepage "https://github.com/cppfw/aumiks"
  url "https://github.com/cppfw/aumiks/archive/0.3.39.tar.gz"
  sha256 "007b84632ee005b585b46c7cab59b3206848ebbadc168452465b0697791f7ca4"

  depends_on "prorab" => :build
  depends_on "prorab-extra" => :build
  depends_on "myci" => :build
  depends_on "libaudout"
  depends_on "libpapki"

  # use gmake here because otherwise homebrew uses default Mac's make which is of too old version 3.81
  def install
    ENV['PATH'] += ":#{ENV['HOMEBREW_PREFIX']}/bin"
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "install", "PREFIX=#{prefix}", "lint=off"
  end

  test do
    system "#{ENV['HOMEBREW_PREFIX']}/opt/make/libexec/gnubin/make", "--include-dir=#{ENV['HOMEBREW_PREFIX']}/include", "test"
  end
end
