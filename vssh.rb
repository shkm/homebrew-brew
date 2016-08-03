class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/2.1.1.tar.gz"
  sha256 "fbe225dd8b49daaecee41aafa1677ba5dc66c71961709227a0bab2247fbdb411"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

