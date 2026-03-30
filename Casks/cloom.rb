cask "cloom" do
  version "0.7.2"
  sha256 "abd6d5c45b06e2ccfc9c191223139de5066bf952a7f96ef5c3ea391af41207e2"

  url "https://github.com/iamsachin/cloom/releases/download/v0.7.2/Cloom-0.7.2.dmg"
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
