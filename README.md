# Homebrew tools

Personal Homebrew casks maintained by [fbajosh](https://github.com/fbajosh).

## Utilipilled

```sh
brew install --cask fbajosh/tools/utilipilled
open -a Utilipilled
```

Published binaries support Apple silicon on macOS 13 or later. It is ad-hoc signed and not notarized. If macOS blocks opening it, attempt to open Utilipilled, then use System Settings → Privacy & Security → Open Anyway. Homebrew's quarantine and Gatekeeper checks are left intact. No Apple Developer membership is needed to use this release.

Utilipilled starts with its Camera Quiet module, which temporarily silences system alerts during camera use. It leaves notification banners and media output volume alone. Other system alert sounds are also quiet; this is not a Messages-only mute.

The menu-bar icon appears during camera use and stays hidden while idle. Open Utilipilled again to show its menu temporarily. Launch at login is opt-in in that menu.

## Update or remove

```sh
brew upgrade --cask fbajosh/tools/utilipilled
brew uninstall --cask fbajosh/tools/utilipilled
```

The cask requests an orderly quit during upgrades and uninstallation so the camera module can restore alert volume. If Utilipilled reports a restore error, fix it before continuing. Before uninstalling, disable Launch at login in Utilipilled (or remove its Login Item in System Settings). Brew does not enable startup at login.

`brew uninstall --zap --cask fbajosh/tools/utilipilled` also removes Utilipilled preferences. The camera module's recovery folder is deliberately preserved, so an unresolved original-volume record cannot be discarded by cleanup. If necessary, set Sound → Alert volume manually. See the [app's recovery instructions](https://github.com/fbajosh/Utilipilled#crash-recovery-and-emergency-recovery).

## Maintenance

Publish a versioned app ZIP with the Utilipilled GitHub release, then update `Casks/utilipilled.rb` with its version and SHA-256. The checksum must match the release asset exactly. Do not replace a published asset in place. Run `brew style --cask fbajosh/tools/utilipilled`, and test installation/upgrades/uninstallation before publishing a tap update.

## Renamed from JoshTools

The `joshtools` cask is renamed to `utilipilled` through `cask_renames.json`. Existing users should run `brew update` followed by `brew upgrade --cask fbajosh/tools/utilipilled`. The new app imports JoshTools preferences and retains the original camera-module recovery folder/lock. Disable the old JoshTools Login Item and enable Utilipilled’s if desired.
