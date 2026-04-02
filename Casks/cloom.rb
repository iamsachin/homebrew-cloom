cask "cloom" do
  version "1.0.2"
  sha256 "774e0849dd54281d5cfde9bb228d2c83f3d71569969181f3f328df8ccc96c5c4"

  url "https://github.com/iamsachin/cloom/releases/download/v1.0.2/Cloom-1.0.2.dmg"
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
