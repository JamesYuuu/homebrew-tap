cask "photodeck" do
  version "1.0.3"
  sha256 "da34dad0eac3da6b75a0acb054bcb106cfc7d9d25def72133033db0daf97097d"

  url "https://github.com/JamesYuuu/PhotoDeck-Release/releases/download/v#{version}/PhotoDeck.dmg"
  name "PhotoDeck"
  desc "Native photo viewer"
  homepage "https://github.com/JamesYuuu/PhotoDeck-Release"

  depends_on macos: ">= :sequoia"

  app "PhotoDeck.app"

  zap trash: [
    "~/Library/Application Support/PhotoDeck",
    "~/Library/Caches/PhotoDeck",
    "~/Library/Preferences/com.jamesyu.PhotoDeck.plist",
    "~/Library/Saved Application State/com.jamesyu.PhotoDeck.savedState",
  ]
end
