cask "roobook" do
  version "1.0.13,32"
  sha256 "e780f1cf380af3eb1da1493043a008759eae02914a8ad86a809544fc89c7ab5e"

  url "https://storage.googleapis.com/roobookapp-roobook-public/releases/v#{version.csv.first}/RooBook-#{version.csv.first}-macos-arm64.dmg"
  name "RooBook"
  desc "Reader that turns PDFs into structured, searchable knowledge"
  homepage "https://roobook.app/"

  depends_on arch: :arm64
  depends_on formula: "node"
  depends_on macos: :sequoia

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
