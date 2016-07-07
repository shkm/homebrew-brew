class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/1.3.tar.gz"
  sha256 "3907cb8d08c2f444659dc043852ec034e712e539096903e79eff32d48a6271f9"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

