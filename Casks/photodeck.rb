cask "photodeck" do
  version "1.0.4"
  sha256 "6b8681a94a9f3b977cad1f6268997ef67eec75b0dfac976a2c1501a9b6ed07e4"

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
