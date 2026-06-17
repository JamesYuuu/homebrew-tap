cask "photodeck" do
  version "1.1.0"
  sha256 "1dab52bb47e54837aee5936042ea5c214cd9a8d36e3be93e66b43c35926cbdbc"

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
