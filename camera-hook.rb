class CameraHook < Formula
  desc "Run scripts when your Mac camera turns on or off"
  homepage "https://github.com/shkm/camera-hook"
  url "https://github.com/shkm/camera-hook/releases/download/v1.0.0/camera-hook"
  sha256 "9743899b399a1ea38889813722c19aac2847a69928d6a7c3239e6c36a0c6acc6"
  version "1.0.0"
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
