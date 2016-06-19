class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/1.1.tar.gz"
  sha256 "65e880c99242d517905b3102329d099fa165a31117fb51b47204df713d565794"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

