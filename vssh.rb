class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/1.2.tar.gz"
  sha256 "833415d74298e2db6b676cad3833708f1993f24cafb4d53a03223f389155cdce"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

