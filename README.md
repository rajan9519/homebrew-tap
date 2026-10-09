# rajan9519/homebrew-tap

Homebrew casks for [HeyVedu](https://heyvedu.com), private on-device dictation for Apple silicon Macs.

```bash
brew install --cask rajan9519/tap/heyvedu
```

Requires an Apple silicon Mac on macOS 26.4 (Tahoe) or later. HeyVedu updates itself after
installation; `brew upgrade --cask --greedy heyvedu` also works.

Uninstall, optionally removing settings and downloaded models:

```bash
brew uninstall --cask heyvedu
brew uninstall --zap --cask heyvedu
```

The cask is bumped automatically by a scheduled GitHub Action that reads the app's update
feed, so new releases appear here within a few hours.
