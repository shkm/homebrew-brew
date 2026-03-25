class CameraHook < Formula
  desc "Run scripts when your Mac camera turns on or off"
  homepage "https://github.com/shkm/camera-hook"
  url "https://github.com/shkm/camera-hook/releases/download/v2.1.0/camera-hook"
  sha256 "29e9d31b3ae25cd6eb4478d89991934419cebbd91cdc3046620a257f6d96c6a8"
  version "2.1.0"
  license "MIT"

  depends_on macos: :sonoma

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
