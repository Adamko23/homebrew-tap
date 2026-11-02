# Adamko23 Homebrew tap

Homebrew packages maintained by [Adamko23](https://github.com/Adamko23).

## Install Brew Store

[Brew Store](https://github.com/Adamko23/brew-store) is a native macOS Homebrew
manager written in Rust. Search for apps and tools, inspect your installed
packages, and install, update or uninstall through Homebrew.

Requires **Apple Silicon**, **macOS 13+**, and a working
[Homebrew installation](https://brew.sh).

```sh
brew install --cask adamko23/tap/brew-store
```

Homebrew automatically adds this tap, downloads the DMG from the project's
GitHub release and verifies its SHA-256 checksum.

The current preview is **ad-hoc signed and not notarized by Apple**. Its first
launch may require the per-app **Open Anyway** option in System Settings >
Privacy & Security. See [Apple's instructions](https://support.apple.com/102445).
The cask preserves Homebrew's normal macOS quarantine handling.

This is a project-maintained tap, separate from the official `homebrew/cask`
repository. A manual DMG and ZIP are available from
[Brew Store releases](https://github.com/Adamko23/brew-store/releases).

## Update

Starting with 0.1.1, Brew Store includes signed Sparkle updates. It checks on
launch and daily while running, downloads updates in the background, and installs
on quit when authorization is not needed. The native menu also offers
**Check for App Updates…**. Apple notarization remains separate from these update
signatures. You can also update the cask manually:

```sh
brew update
brew upgrade --cask adamko23/tap/brew-store
```

## Uninstall

```sh
brew uninstall --cask adamko23/tap/brew-store
```

The cask installs and removes `Brew Store.app`. It does not run cleanup scripts
or remove the packages managed by Brew Store.

## Maintaining releases

Publish the new app version in `Adamko23/brew-store` first. Update `version` and
`sha256` in [Casks/brew-store.rb](Casks/brew-store.rb) to match the new immutable
release DMG, verify the download and installation, then commit and push the cask
change. The application version and DMG filename must agree. Never replace a
published asset without a new version and checksum.

Homebrew can then detect the newer cask after `brew update`. Updating this tap
does not rebuild or automatically release the application.

## License

The packaging in this repository is [MIT licensed](LICENSE). Brew Store and its
dependencies retain the licenses documented in the application repository.
