cask "photodeck" do
  version "1.0.2"
  sha256 "e9bb322001976ebf2ab07cc55bcb98e599f211335fac8892704d9027d8afe001"

  url "https://github.com/JamesYuuu/PhotoDeck/releases/download/v#{version}/PhotoDeck.dmg"
  name "PhotoDeck"
  desc "Native photo viewer"
  homepage "https://github.com/JamesYuuu/PhotoDeck"

  depends_on macos: ">= :sequoia"

  app "PhotoDeck.app"

  zap trash: [
    "~/Library/Application Support/PhotoDeck",
    "~/Library/Caches/PhotoDeck",
    "~/Library/Preferences/com.jamesyu.PhotoDeck.plist",
    "~/Library/Saved Application State/com.jamesyu.PhotoDeck.savedState",
  ]
end
