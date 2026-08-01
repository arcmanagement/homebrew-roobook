cask "roobook" do
  version "1.0.6,25"
  sha256 "152b5359ab3331aa2c25a231201172e5da97c207c49d25a331ff9ad0d5dfa826"

  url "https://storage.googleapis.com/roobookapp-roobook-public/releases/v#{version.csv.first}/RooBook-#{version.csv.first}-macos-arm64.dmg"
  name "RooBook"
  desc "Reader that turns PDFs into structured, searchable knowledge"
  homepage "https://roobook.app/"

  depends_on arch: :arm64
  depends_on macos: :sequoia
  depends_on formula: "node"

  app "RooBook.app"
  binary "#{appdir}/RooBook.app/Contents/Resources/roobook", target: "roobook"

  uninstall quit: "app.roobook"

  zap trash: [
    "~/Library/Application Support/RooBook",
    "~/Library/Caches/RooBook",
    "~/Library/Logs/RooBook",
    "~/Library/Preferences/app.roobook.plist",
    "~/Library/Saved Application State/app.roobook.savedState",
  ]
end
