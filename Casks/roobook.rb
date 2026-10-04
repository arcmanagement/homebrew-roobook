cask "roobook" do
  version "1.0.15,34"
  sha256 "46ba1e52765a9e36f68f172e4010d1d59bca584b26d869da93b4d3081057e193"

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

  caveats <<~EOS
    RooBook uses the Codex CLI installed on this Mac to analyze books.
    Install it with:
      brew install codex
    or install the ChatGPT desktop app, which includes Codex.
  EOS
end
