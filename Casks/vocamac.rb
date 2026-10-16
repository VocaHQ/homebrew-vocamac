cask "vocamac" do
  version "1.2.0"
  sha256 "c37a84fc05b8317630d24f05e592720b4cff037d80084927ab14fdf7543ada54"

  url "https://github.com/VocaHQ/vocamac/releases/download/v#{version}/VocaMac-#{version}-arm64.dmg"
  name "VocaMac"
  desc "Private, offline voice-to-text dictation"
  homepage "https://vocamac.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "vocamac-nightly"
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "VocaMac.app"

  zap trash: [
    "~/Library/Application Support/VocaMac",
    "~/Library/Caches/com.vocamac.app",
    "~/Library/Preferences/com.vocamac.app.plist",
    "~/Library/Saved Application State/com.vocamac.app.savedState",
  ]
end
