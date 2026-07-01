cask "photodeck" do
  version "1.3.2"
  sha256 "2b279883b88823d02a5fcfc6b7238534a6bdd75f9fe15a3fd97d01f8db1fd300"

  url "https://github.com/JamesYuuu/PhotoDeck-Release/releases/download/v#{version}/PhotoDeck.dmg"
  name "PhotoDeck"
  desc "Native photo viewer"
  homepage "https://github.com/JamesYuuu/PhotoDeck-Release"

  depends_on macos: :sequoia

  app "PhotoDeck.app"

  zap trash: [
    "~/Library/Application Support/PhotoDeck",
    "~/Library/Caches/PhotoDeck",
    "~/Library/Preferences/com.jamesyu.PhotoDeck.plist",
    "~/Library/Saved Application State/com.jamesyu.PhotoDeck.savedState",
  ]
end
