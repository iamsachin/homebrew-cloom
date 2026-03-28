cask "cloom" do
  version "0.3.0"
  sha256 "17b63d0e3e8ac2a7ab46181fa090b1bace2d7e8948a43a1ccdfef907f7afe462"

  url "https://github.com/iamsachin/cloom/releases/download/v0.3.0/Cloom-0.3.0.dmg"
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
