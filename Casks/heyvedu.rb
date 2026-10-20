cask "heyvedu" do
  version "26.10.2002"
  sha256 "1343653162a349dbe6c0349f71b515cd14d4dbaa4e561485988d26d430ad56f3"

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
