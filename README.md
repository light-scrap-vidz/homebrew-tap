# LightScrapVidz Homebrew Tap

Official Homebrew tap for [**light-scrap-vidz**](https://light-scrap-vidz.github.io/light-scrap-vidz/) — download videos from TikTok, Instagram, YouTube and Facebook as MP4 or MP3.

## Install

```bash
brew install --cask light-scrap-vidz/tap/light-scrap-vidz
```

Or use the project's one-line installer, which runs the same `brew install` on macOS and installs
the `.deb` / `.AppImage` on Linux:

```bash
curl -fsSL https://raw.githubusercontent.com/light-scrap-vidz/light-scrap-vidz/main/install.sh | bash
```

## Upgrade

```bash
brew upgrade --cask light-scrap-vidz
```

## Uninstall

```bash
brew uninstall --cask light-scrap-vidz
brew untap light-scrap-vidz/tap
```

Add `--zap` to also remove settings, caches and application data:

```bash
brew uninstall --zap --cask light-scrap-vidz
```

## Requirements

- **macOS 11 Big Sur or later**, Apple Silicon only (M1 or later).
- Nothing else — `yt-dlp` ships inside the app bundle.

The app is not signed with an Apple Developer certificate. If macOS refuses to open it,
clear the quarantine flag once:

```bash
xattr -dr com.apple.quarantine "/Applications/light-scrap-vidz.app"
```

## Contents

| Cask | Description |
|------|-------------|
| [`light-scrap-vidz`](Casks/light-scrap-vidz.rb) | LightScrapVidz desktop app (arm64 DMG) |

## How this tap is updated

Nothing here is edited by hand. Publishing a release in the
[main repository](https://github.com/light-scrap-vidz/light-scrap-vidz) triggers its
`update-homebrew-tap` workflow, which recomputes the DMG checksum and bumps
`version` and `sha256` in `Casks/light-scrap-vidz.rb`.

The cask body itself is the source of truth and lives only here — the workflow rewrites
those two fields and nothing else, so an edit made in this repository is never
overwritten by the next release. Before pushing, the workflow audits and actually
installs the candidate cask on a macOS runner; a cask that fails to install never
reaches this repository.

The workflow needs a `HOMEBREW_TAP_TOKEN` secret on the main repository (a PAT with
`contents: write` here).

## Issues

Report problems on the [main issue tracker](https://github.com/light-scrap-vidz/light-scrap-vidz/issues).
