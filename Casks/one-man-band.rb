cask "one-man-band" do
  version "0.3.0"

  on_arm do
    sha256 "064605be65447ae12283cabe74795360151f83c3dc9598b8d8634adfbfdd5fb3"
    url "https://github.com/shkm/one-man-band/releases/download/v#{version}/One.Man.Band_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "56b47489e5a374cf0183a89fa414cd7beba21e1638d636d045ab86d766c37954"
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
