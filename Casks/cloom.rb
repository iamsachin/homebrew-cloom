cask "cloom" do
  version "0.6.0"
  sha256 "3c1d0830bb317ac735547f82ebd6d34dd5a97e0d76036639d11482da01fe4dc0"

  url "https://github.com/iamsachin/cloom/releases/download/v0.6.0/Cloom-0.6.0.dmg"
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
