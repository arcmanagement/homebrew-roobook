cask "roobook" do
  version "1.0.5,24"
  sha256 "8c3d7123444d010b4a0cc47a5e5e39c456401b6212f648e0682cc8673ae615f5"

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
