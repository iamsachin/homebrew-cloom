cask "cloom" do
  version "0.1.1"
  sha256 "4a89530588d3ce85f370284606b99b79262f9f7f038ce74a4e199da8ad2aae66"

  url "https://github.com/iamsachin/cloom/releases/download/v#{version}/Cloom-#{version}.dmg"
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
