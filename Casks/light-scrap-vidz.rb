cask "light-scrap-vidz" do
  version "1.0.0"
  sha256 "2ba625f62a30da44b7b2534a755fd3048f688619c0896c2de9d86810065ce312"

  url "https://github.com/light-scrap-vidz/light-scrap-vidz/releases/download/v#{version}/light-scrap-vidz_aarch64.app.tar.gz"
  name "LightScrapVidz"
  desc "Download videos from TikTok, Instagram, YouTube and Facebook as MP4 or MP3"
  homepage "https://light-scrap-vidz.github.io/light-scrap-vidz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships Tauri's updater and replaces itself in place.
  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "light-scrap-vidz.app"

  zap trash: [
    "~/Library/Application Support/com.lightscrape.vidz",
    "~/Library/Caches/com.lightscrape.vidz",
    "~/Library/Preferences/com.lightscrape.vidz.plist",
    "~/Library/Saved Application State/com.lightscrape.vidz.savedState",
    "~/Library/WebKit/com.lightscrape.vidz",
  ]

  caveats <<~EOS
    LightScrapVidz is not signed or notarized by Apple. On first launch macOS may
    refuse to open it. Remove the quarantine attribute once:

      xattr -dr com.apple.quarantine "/Applications/light-scrap-vidz.app"
  EOS
end
