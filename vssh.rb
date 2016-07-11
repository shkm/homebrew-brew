class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/2.0.tar.gz"
  sha256 "1d895d8a8a10cd8b24d7ccb5904e05399895b8d9d14f60cb0193806f555bbe65"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

