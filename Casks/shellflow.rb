cask "shellflow" do
  version "0.7.0"

  on_arm do
    sha256 "b00e567bebf744514546594dec2e8098e2288badcfb4ed2a0e9d683b0f09bc76"
    url "https://github.com/shkm/shellflow/releases/download/v#{version}/Shellflow_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "60c66bf5e91bb7dfe2833c097768c5410dcef602e8475d9c73a68ec641da39f0"
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
