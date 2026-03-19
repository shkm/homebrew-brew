class CameraHook < Formula
  desc "Run scripts when your Mac camera turns on or off"
  homepage "https://github.com/shkm/camera-hook"
  url "https://github.com/shkm/camera-hook/releases/download/v2.0.0/camera-hook"
  sha256 "02526a9c8f6983c7584657819dac3d5880d9493bcdd36ab0bb85950d43018d13"
  version "2.0.0"
  license "MIT"

  depends_on macos: ">= :sonoma"

  def install
    bin.install "camera-hook"
  end

  service do
    run [opt_bin/"camera-hook", "watch"]
    keep_alive true
    log_path var/"log/camera-hook.log"
    error_log_path var/"log/camera-hook.log"
  end

  test do
    system bin/"camera-hook", "--version"
  end
end
