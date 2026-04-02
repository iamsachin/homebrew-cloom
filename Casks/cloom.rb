cask "cloom" do
  version "1.0.2"
  sha256 "fad6376b2a22200d01b3cb58f9263dcf74feb78f9978719a2d393698144c96e0"

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
