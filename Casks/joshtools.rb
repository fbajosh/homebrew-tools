cask "joshtools" do
  version "1.1.0"
  sha256 "018d45ca68ac0fef4563c0c3c3c0401895c5747747eaccb0ca22be14c0b7c6b0"

  url "https://github.com/fbajosh/JoshTools/releases/download/v#{version}/JoshTools-#{version}-macOS-arm64.zip"
  name "JoshTools"
  desc "Personal utilities with camera-aware alert quieting"
  homepage "https://github.com/fbajosh/JoshTools"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "JoshTools.app"

  uninstall quit: "local.JoshTools"

  zap trash: "~/Library/Preferences/local.JoshTools.plist"

  caveats <<~EOS
    This personal-use release is ad-hoc signed and not notarized.
    If macOS blocks opening JoshTools, use System Settings > Privacy & Security
    > Open Anyway after attempting to open the app.

    Launch at login is optional in the app's menu. Disable it before uninstalling.
    The Camera Quiet module silences all system alert sounds during camera use.
    Recovery files are preserved, including when using --zap.
  EOS
end
