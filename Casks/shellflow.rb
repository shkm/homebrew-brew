cask "shellflow" do
  version "0.11.0"

  on_arm do
    sha256 "f39cfcba8b404b224ab0a7fb9897b2caa7a11a477794391d04218ac5285e2f94"
    url "https://github.com/shkm/shellflow/releases/download/v#{version}/Shellflow_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "b75461f5b38e78945ec8fc6988103ada6dbf0996ff86542ad7d1ab8056794cdf"
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
