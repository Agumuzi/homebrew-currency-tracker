# Homebrew Tap for Currency Tracker

This repository provides the Homebrew Cask for [Currency Tracker](https://github.com/Agumuzi/Currency-Tracker), a macOS menu bar app for exchange rates and quick currency conversion.

## Install

```bash
brew tap agumuzi/currency-tracker
brew install --cask currency-tracker
```

## Upgrade

```bash
brew update
brew upgrade --cask currency-tracker
```

## Uninstall

```bash
brew uninstall --cask currency-tracker
```

To also remove local support files:

```bash
brew uninstall --cask --zap currency-tracker
```

## First Launch

Currency Tracker is ad-hoc signed for bundle integrity, but it is not signed with an Apple Developer ID and is not notarized by Apple.

On first launch, macOS may block the app. Open:

`System Settings` -> `Privacy & Security` -> `Open Anyway`

Approve `Currency Tracker`, then confirm `Open`.

If macOS does not show `Open Anyway` and you have verified that the app came from this GitHub release, you can remove the quarantine attribute manually:

```bash
xattr -dr com.apple.quarantine "/Applications/Currency Tracker.app"
```

Only use that command for software from a source you trust.

## Links

- [Currency Tracker repository](https://github.com/Agumuzi/Currency-Tracker)
- [Latest release](https://github.com/Agumuzi/Currency-Tracker/releases/latest)
- [Product page](https://agumuzi.github.io/Currency-Tracker/)
