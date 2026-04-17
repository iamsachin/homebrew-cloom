cask "cloom" do
  version "1.0.3"
  sha256 "8654f00f1b38df177fba0cfc504e5d7dc917f4495996ee5e6799f2f98ac5fc09"

  url "https://github.com/iamsachin/cloom/releases/download/v1.0.3/Cloom-1.0.3.dmg"
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
