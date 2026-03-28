cask "cloom" do
  version "0.4.0"
  sha256 "7243adb30065695b11c8e3d5b7373ddb9e498cf00f719157e30454d1fc7d3d3d"

  url "https://github.com/iamsachin/cloom/releases/download/v0.4.0/Cloom-0.4.0.dmg"
  name "Cloom"
  desc "Open-source screen recorder for macOS"
  homepage "https://github.com/iamsachin/cloom"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Cloom.app"

  zap trash: [
    "~/Library/Application Support/Cloom",
    "~/Library/Preferences/com.cloom.app.plist",
    "~/Library/Caches/com.cloom.app",
  ]
end
