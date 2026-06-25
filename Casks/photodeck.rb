cask "photodeck" do
  version "1.3.0"
  sha256 "0309196ca328330dfd5f082b0b31d7c471a09d1732b2106455bed4f41050479c"

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
