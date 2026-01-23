cask "one-man-band" do
  version "0.5.0"

  on_arm do
    sha256 "411e482be0980c3fc58a68056ca492d6e2d2452d128bcc7e73c2ba5bc20a77e0"
    url "https://github.com/shkm/one-man-band/releases/download/v#{version}/One.Man.Band_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "e367c9b3aa8a906d46d149dc676b650d286f6e4383857662cc955810e5f74b92"
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
