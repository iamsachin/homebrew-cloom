cask "cloom" do
  version "1.0.0"
  sha256 "160403c3cf2917fb9fa0bfb2939cf6a3f2f4d8cf54c473666a9dd062eadca3a8"

  url "https://github.com/iamsachin/cloom/releases/download/v1.0.0/Cloom-1.0.0.dmg"
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
