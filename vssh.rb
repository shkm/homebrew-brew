class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/2.1.5.tar.gz"
  sha256 "45be4071c92be804e52dbe21da829c69e59bc555193386a26ad2bdd26a231387"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

