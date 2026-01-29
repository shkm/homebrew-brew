cask "shellflow" do
  version "0.12.0"

  on_arm do
    sha256 "77aeccb21d157933251deb0763fede4af5de0671effbac7473a490db6b579e55"
    url "https://github.com/shkm/shellflow/releases/download/v#{version}/Shellflow_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "bcced592c7a5240fdd4c6e683709cd5c48d65212d1439a630aa750384d61dd6a"
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
