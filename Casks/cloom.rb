cask "cloom" do
  version "0.1.0"
  sha256 "PLACEHOLDER"

  url "https://github.com/iamsachin/cloom/releases/download/v#{version}/Cloom-#{version}.dmg"
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
