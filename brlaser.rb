class Brlaser < Formula
  desc "CUPS driver for Brother laser printers"
  homepage "https://github.com/Owl-Maintain/brlaser"
  # macOS support is not in a tagged release yet
  url "https://github.com/Owl-Maintain/brlaser/archive/edf2770c4573973d5b90ce57ec407e675348c196.tar.gz"
  version "6.2.8-20260927"
  sha256 "7f81a16ed6278151dfae6599c7e96c5cdd8bb444624ceedf2d3a1d9c6e0c19dc"
  license "GPL-2.0-or-later"
  head "https://github.com/Owl-Maintain/brlaser.git", branch: "master"

  depends_on "cmake" => :build
  depends_on :macos

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    libexec.install "build/rastertobrlaser"
    (pkgshare/"ppd").install Dir["build/ppd/*.ppd"]
  end

  def caveats
    <<~EOS
      macOS only runs printer filters from system folders. To install the driver:
        sudo install -d /Library/Printers/brlaser/Filter
        sudo install -m 755 #{opt_libexec}/rastertobrlaser /Library/Printers/brlaser/Filter/
        sudo install -m 644 #{opt_pkgshare}/ppd/*.ppd /Library/Printers/PPDs/Contents/Resources/

      Re-run these after upgrading.
    EOS
  end

  test do
    assert_match "CUPS filter", shell_output("#{libexec}/rastertobrlaser 2>&1", 1)
  end
end
