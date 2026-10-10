cask "heyvedu" do
  version "26.10.1001"
  sha256 "d23ad2af3ec23f9b558d63ec3e57e3edb635521397da58cd7987a5c607eaf639"

  url "https://app.heyvedu.com/updates/HeyVedu-#{version}-arm64.dmg"
  name "HeyVedu"
  desc "Private, on-device voice dictation"
  homepage "https://heyvedu.com/"

  livecheck do
    url "https://app.heyvedu.com/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "HeyVedu.app"

  zap trash: [
    "~/Library/Application Support/HeyVedu",
    "~/Library/Caches/com.heyvedu.app",
    "~/Library/HTTPStorages/com.heyvedu.app",
    "~/Library/Preferences/com.heyvedu.app.plist",
    "~/Library/Saved Application State/com.heyvedu.app.savedState",
  ]
end
