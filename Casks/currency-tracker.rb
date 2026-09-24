cask "currency-tracker" do
  version "1.8"
  sha256 "6bb08593bb524214897c7c7e7e56060f4711a48bc112808aa8cb8040ad4791be"

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
