cask "cloom" do
  version "0.7.1"
  sha256 "0223971ce15b707419bbb57efe7b2c7857eac7ffcbd696492cec8b9398ee653a"

  url "https://github.com/iamsachin/cloom/releases/download/v0.7.1/Cloom-0.7.1.dmg"
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
