cask "one-man-band" do
  version "0.4.0"

  on_arm do
    sha256 "0c1391d503aa324a9ec83199428b47b37c3c938d383574123379e1865834d935"
    url "https://github.com/shkm/one-man-band/releases/download/v#{version}/One.Man.Band_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "ab61a87e035dc0d51575855b64cff4fa0913070103a261bf4792baa03db6fe66"
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
