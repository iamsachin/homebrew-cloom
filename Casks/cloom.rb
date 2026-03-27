cask "cloom" do
  version "0.2.0"
  sha256 "8b87fe1fd0bc709beacee1786e187bd43535335fca675fe642684bf66ef1a525"

  url "https://github.com/iamsachin/cloom/releases/download/v0.2.0/Cloom-0.2.0.dmg"
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
