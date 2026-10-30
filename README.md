# homebrew-tap

Homebrew tap for [LightScrapVidz](https://github.com/light-scrap-vidz/light-scrap-vidz).

## Install

```bash
brew install --cask light-scrap-vidz/tap/light-scrap-vidz
```

## Update

```bash
brew update
brew upgrade --cask light-scrap-vidz
```

## Uninstall

```bash
brew uninstall --cask light-scrap-vidz
brew untap light-scrap-vidz/tap
```

Add `--zap` to `brew uninstall` to also remove the app's settings and caches.

## About unsigned builds

LightScrapVidz is not signed or notarized by Apple. If macOS refuses to open it on first launch, remove the quarantine attribute once:

```bash
xattr -dr com.apple.quarantine "/Applications/LightScrapVidz.app"
```

## License

MIT — see [LICENSE](LICENSE).
