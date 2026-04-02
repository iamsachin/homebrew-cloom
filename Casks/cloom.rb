cask "cloom" do
  version "1.0.1"
  sha256 "371f5100f22c5781f0b7b84882ed75b2c9866045eb629f391d2dbb0df13816cc"

  url "https://github.com/iamsachin/cloom/releases/download/v1.0.1/Cloom-1.0.1.dmg"
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
