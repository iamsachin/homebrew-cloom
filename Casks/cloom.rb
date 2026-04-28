cask "cloom" do
  version "1.0.5"
  sha256 "961589f1b594a1443039f6c86b9a845fed27dd9a5c4834da7e6648b98b09e965"

  url "https://github.com/iamsachin/cloom/releases/download/v1.0.5/Cloom-1.0.5.dmg"
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
