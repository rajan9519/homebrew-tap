cask "heyvedu" do
  version "26.10.0901"
  sha256 "22762deff6acee7905b130d4544415ea47df86c90b4b60ef28183c8005db758b"

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
