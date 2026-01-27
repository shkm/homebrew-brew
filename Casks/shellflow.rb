cask "shellflow" do
  version "0.10.0"

  on_arm do
    sha256 "5fa3a914d613fae9395d9f8cf94c0a959db326961204fa4d080025126d81fbe8"
    url "https://github.com/shkm/shellflow/releases/download/v#{version}/Shellflow_#{version}_aarch64.dmg"
  end

  on_intel do
    sha256 "71911316e0a3cfc5839a463b2b461bc7b618566019760680fcd965852f4e0694"
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
