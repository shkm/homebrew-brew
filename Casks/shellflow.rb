cask "shellflow" do
  version "0.6.0"

  on_arm do
    sha256 "ab76ace0c6cabfc05a227a1d52ed3a9602862f0b8ac6da307b4bcc160db54c96"
    url "https://github.com/shkm/shellflow/releases/download/v#{version}/Shellflow_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "69db506aea50f5e75f21bb4532ce08bde2e758d5e048624f8eae35346fb12c92"
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
