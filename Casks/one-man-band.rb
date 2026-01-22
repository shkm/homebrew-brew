cask "one-man-band" do
  version "0.2.0"

  on_arm do
    sha256 "41dcccb68b53a5b1c9cfc16645cbc4c1cf5a96ce3a353e7560cf310dd0f45b52"
    url "https://github.com/shkm/one-man-band/releases/download/v#{version}/One.Man.Band_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "2d7b412e98895cd04e9c6ae90480a9a43cd99480c368e91aa6cba43d7ec2e090"
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
