cask "vocamac" do
  version "0.7.2"
  sha256 "de06136da8d04cb449c10f1dbcca5ddfffa6e7ded72ecedda177c7a49f156f4d"

  url "https://github.com/VocaHQ/vocamac/releases/download/v#{version}/VocaMac-#{version}-arm64.dmg",
      verified: "github.com/VocaHQ/vocamac/"
  name "VocaMac"
  desc "Local voice-to-text dictation powered by WhisperKit"
  homepage "https://vocamac.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "vocamac-nightly"
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "VocaMac.app"

  zap trash: [
    "~/Library/Application Support/VocaMac",
    "~/Library/Caches/com.vocamac.app",
    "~/Library/Preferences/com.vocamac.app.plist",
    "~/Library/Saved Application State/com.vocamac.app.savedState",
  ]
end
