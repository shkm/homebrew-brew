class Vssh < Formula
  desc "Fast `vagrant ssh` in the current directory."
  homepage "https://github.com/shkm/vssh"
  url "https://github.com/shkm/vssh/archive/1.4.tar.gz"
  sha256 "5ab665ab4795ed7cb0f03250991ec89409a9a116eb9e2b45871c3ed22385dc45"

  def install
    bin.install "vssh"
  end

  test do
    system "vssh", "--version"
  end
end

