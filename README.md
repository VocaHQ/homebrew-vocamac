# VocaMac Homebrew Tap

Official Homebrew tap for [VocaMac](https://github.com/VocaHQ/vocamac) — a native macOS menu bar application for local voice-to-text dictation powered by WhisperKit.

## Installation

```bash
brew tap vocahq/vocamac
brew trust vocahq/vocamac
brew install --cask vocamac
```

## Nightly Builds

For early access to the latest features, install the nightly build:

```bash
brew install --cask vocamac-nightly
```

> **Note:** Nightly builds may be unstable. Prefer the regular release for daily use.

## Upgrade

```bash
brew upgrade --cask vocamac
```

## Uninstall

```bash
brew uninstall --cask vocamac
brew untap vocahq/vocamac
```

## Migrating from the old tap

If you previously tapped via the personal account (`jatinkrmalik/vocamac`), remove it before using the org tap. Keeping both causes Homebrew to fail with:

```text
Error: Cask vocamac exists in multiple taps:
       * jatinkrmalik/vocamac/vocamac
       * vocahq/vocamac/vocamac
```

Fix (installed apps are untouched):

```bash
brew untap jatinkrmalik/vocamac
brew tap vocahq/vocamac
brew trust vocahq/vocamac
brew install --cask vocamac
```

## Links

- **Source:** [github.com/VocaHQ/vocamac](https://github.com/VocaHQ/vocamac)
- **Website:** [vocamac.com](https://vocamac.com)
- **Issues:** [github.com/VocaHQ/vocamac/issues](https://github.com/VocaHQ/vocamac/issues)
- **Discord:** [discord.gg/t6muquAJbm](https://discord.gg/t6muquAJbm)
- **X:** [@vocahq](https://x.com/vocahq)

## License

The files in this tap are licensed under the [GNU Affero General Public License version 3](LICENSE).
