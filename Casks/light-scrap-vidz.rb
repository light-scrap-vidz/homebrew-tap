cask "light-scrap-vidz" do
  version "1.0.0"
  sha256 "a8d2c7a34a659e0fdeb1ecee9a75349b486721729b5766618257a1ce761af8e3"

  url "https://github.com/light-scrap-vidz/light-scrap-vidz/releases/download/v#{version}/LightScrapVidz_#{version}_aarch64.app.tar.gz"
  name "LightScrapVidz"
  desc "Download videos from TikTok, Instagram, YouTube and Facebook as MP4 or MP3"
  homepage "https://github.com/light-scrap-vidz/light-scrap-vidz"

  livecheck do
    url :url
    strategy :github_latest
  end

  # The app ships Tauri's updater and replaces itself in place.
  auto_updates true
  depends_on arch: :arm64
  # yt-dlp (bundled) needs ffmpeg to merge video and audio or extract MP3, and a JavaScript
  # runtime for YouTube.
  depends_on formula: "deno"
  depends_on formula: "ffmpeg"
  depends_on macos: :monterey

  app "LightScrapVidz.app"

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

      xattr -dr com.apple.quarantine "/Applications/LightScrapVidz.app"
  EOS
end
