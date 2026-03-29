cask "cloom" do
  version "0.7.0"
  sha256 "699270f202539708ac49aa7152c7569f197f26ffe729d9768de5d9777970c28c"

  url "https://github.com/iamsachin/cloom/releases/download/v0.7.0/Cloom-0.7.0.dmg"
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
