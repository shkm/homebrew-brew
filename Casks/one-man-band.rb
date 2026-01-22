cask "one-man-band" do
  version "0.1.0"

  on_arm do
    sha256 "145578d0f146475605964d42a5e397c6a8541477c278da746179a0a4f9060a1b"
    url "https://github.com/shkm/one-man-band/releases/download/v#{version}/One.Man.Band_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "5e632cf50040a2237ca72b56fcb3ee441b33accdf7bb4fe828f137999ecf8c99"
    url "https://github.com/shkm/one-man-band/releases/download/v#{version}/One.Man.Band_#{version}_x64.dmg"
  end

  name "One Man Band"
  desc "Desktop app for orchestrating git worktrees with integrated terminal support"
  homepage "https://github.com/shkm/one-man-band"

  depends_on macos: ">= :ventura"

  app "One Man Band.app"

  zap trash: [
    "~/.config/onemanband",
  ]
end
