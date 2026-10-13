cask "heyvedu" do
  version "26.10.1305"
  sha256 "f51a9a55e5ac8072eb5fd394b6f0512ed3193b3658f681d72d99763ac96fcba2"

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
