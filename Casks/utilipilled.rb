cask "utilipilled" do
  version "1.3.2"
  sha256 "b8bd023f13d2a9343038ea3d8a14a149018479b7a66e8436bda48999564a2aac"

  url "https://github.com/fbajosh/Utilipilled/releases/download/v#{version}/Utilipilled-#{version}-macOS-arm64.zip"
  name "Utilipilled"
  desc "Personal utilities with camera-aware alert quieting"
  homepage "https://github.com/fbajosh/Utilipilled"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Utilipilled.app"

  uninstall quit: ["local.Utilipilled", "local.JoshTools"]

  zap trash: "~/Library/Preferences/local.Utilipilled.plist"

  caveats <<~EOS
    This personal-use release is ad-hoc signed and not notarized.
    If macOS blocks opening Utilipilled, use System Settings > Privacy & Security
    > Open Anyway after attempting to open the app.

    Launch at login is optional in the app's menu. Disable it before uninstalling.
    The Camera Quiet module silences all system alert sounds during camera use.
    Recovery files are preserved, including when using --zap.
  EOS
end
