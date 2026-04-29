cask "cloom" do
  version "1.1.0"
  sha256 "7cc3485f5611c2614648b9e1602c545b10c4e12c6c3a8925b426d8e53ff881d4"

  url "https://github.com/iamsachin/cloom/releases/download/v1.1.0/Cloom-1.1.0.dmg"
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
