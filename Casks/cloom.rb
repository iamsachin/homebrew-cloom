cask "cloom" do
  version "0.5.0"
  sha256 "c5ff265ef772f609e09179a2f81f2ad64786c45df7594a5346b6de1c19548073"

  url "https://github.com/iamsachin/cloom/releases/download/v0.5.0/Cloom-0.5.0.dmg"
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
