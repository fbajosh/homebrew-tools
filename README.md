# Josh's Homebrew tools

Personal Homebrew casks maintained by [fbajosh](https://github.com/fbajosh).

## JoshTools

```sh
brew install --cask fbajosh/tools/joshtools
open -a JoshTools
```

The first release supports Apple silicon on macOS 13 or later. It is ad-hoc signed and not notarized. If macOS blocks opening it, attempt to open JoshTools, then use System Settings → Privacy & Security → Open Anyway. Homebrew's quarantine and Gatekeeper checks are left intact. No Apple Developer membership is needed to use this release.

JoshTools starts with its Camera Quiet module, which temporarily silences system alerts during camera use. It leaves notification banners and media output volume alone. Other system alert sounds are also quiet; this is not a Messages-only mute.

The menu-bar icon appears during camera use and stays hidden while idle. Open JoshTools again to show its menu temporarily. Launch at login is opt-in in that menu.

## Update or remove

```sh
brew upgrade --cask fbajosh/tools/joshtools
brew uninstall --cask fbajosh/tools/joshtools
```

The cask requests an orderly quit during upgrades and uninstallation so the camera module can restore alert volume. If JoshTools reports a restore error, fix it before continuing. Before uninstalling, disable Launch at login in JoshTools (or remove its Login Item in System Settings). Brew does not enable startup at login.

`brew uninstall --zap --cask fbajosh/tools/joshtools` also removes JoshTools preferences. The camera module's recovery folder is deliberately preserved, so an unresolved original-volume record cannot be discarded by cleanup. If necessary, set Sound → Alert volume manually. See the [app's recovery instructions](https://github.com/fbajosh/JoshTools#crash-recovery-and-emergency-recovery).

## Maintenance

Publish a versioned app ZIP with the JoshTools GitHub release, then update `Casks/joshtools.rb` with its version and SHA-256. The checksum must match the release asset exactly. Do not replace a published asset in place. Run `brew style --cask fbajosh/tools/joshtools`, and test installation/upgrades/uninstallation before publishing a tap update. The unsigned first release will not pass a notarization/Gatekeeper audit for admission to Homebrew's official catalog.
