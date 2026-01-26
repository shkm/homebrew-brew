cask "shellflow" do
  version "0.9.1"

  on_arm do
    sha256 "ff98a466abee4e744a18fc18894589c9889e6028ac7a29c5571a01db8cae055d"
    url "https://github.com/shkm/shellflow/releases/download/v#{version}/Shellflow_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "4bed61650c84879f48b90283b1be7073296a4388725bee1eba24a0c4ef701b88"
    url "https://github.com/shkm/shellflow/releases/download/v#{version}/Shellflow_#{version}_x64.dmg"
  end

  name "Shellflow"
  desc "Desktop app for orchestrating git worktrees with integrated terminal support"
  homepage "https://github.com/shkm/shellflow"

  depends_on macos: ">= :ventura"

  app "Shellflow.app"

  zap trash: [
    "~/.config/shellflow",
  ]
end
