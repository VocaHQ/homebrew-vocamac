cask "vocamac" do
  version "0.8.0"
  sha256 "2a68bb7c9503f347f2838d06b39afb866c5cfc4df856cad9635ab1a5a9d326b1"

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
