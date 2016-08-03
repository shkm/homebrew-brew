class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/2.1.tar.gz"
  sha256 "c32bc18ca28102a5cd0f714c3d9eb67da09a0b111274e6a2eca3bdbda25c6fb8"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

