cask "currency-tracker" do
  version "1.6.2"
  sha256 "872fff5083b211827d0a8cacfa776fbd91ba17302c34dc0ce1b5847ad18a3cee"

  url "https://github.com/Agumuzi/Currency-Tracker/releases/download/v#{version}/Currency-Tracker-#{version}.zip"
  name "Currency Tracker"
  desc "macOS menu bar app for exchange rates and quick currency conversion"
  homepage "https://github.com/Agumuzi/Currency-Tracker"

  livecheck do
    url "https://github.com/Agumuzi/Currency-Tracker/releases/latest"
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Currency Tracker.app"

  uninstall quit: "com.thomas.Currency-Tracker"

  zap trash: [
    "~/Library/Application Support/CurrencyTracker",
    "~/Library/Caches/Currency Tracker",
    "~/Library/Preferences/com.thomas.Currency-Tracker.plist",
  ]
end
