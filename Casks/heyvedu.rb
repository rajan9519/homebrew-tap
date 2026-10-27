cask "heyvedu" do
  version "26.10.2701"
  sha256 "a7664a857696a10a0cc7bc706fb78ad9b87036b7be70be0c9470c84bc710c043"

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
