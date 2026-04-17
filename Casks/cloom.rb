cask "cloom" do
  version "1.0.4"
  sha256 "b315ca093c484471d7ba1c1e65fef26e0f5838b9e8587b3ab2df4becf2048cfe"

  url "https://github.com/iamsachin/cloom/releases/download/v1.0.4/Cloom-1.0.4.dmg"
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
