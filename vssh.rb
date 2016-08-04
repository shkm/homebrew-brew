class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/2.1.2.tar.gz"
  sha256 "7e5e46dde0f7725898af634ed237efa6310d418becda654c5b158bb032bdd36f"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

