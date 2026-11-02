# ya-makariy/homebrew-tap

Homebrew tap for my macOS apps.

## Casks

| Cask | App | Description |
|------|-----|-------------|
| `to-review` | [ToReview](https://github.com/ya-makariy/to-review) | Menu-bar app and widgets for GitHub and GitLab pull requests waiting for your review |
| `vpn-widget` | [VPN Widget](https://github.com/ya-makariy/vpn-widget) | Menu bar status and control for your work VPNs: FortiClient, AnyConnect, AmneziaWG and WireGuard profiles, plus its own openfortivpn and openconnect tunnels |

## Install

Use the fully qualified name — Homebrew 6+ trusts a third-party tap only when you install
something from it explicitly:

```sh
brew install --cask ya-makariy/tap/to-review
brew install --cask ya-makariy/tap/vpn-widget
```

Upgrades then work as usual:

```sh
brew upgrade --cask to-review vpn-widget
```

## Unsigned apps

The apps here are ad-hoc signed and not notarized (no Apple Developer Program membership),
so macOS blocks the first launch. Approve it once:

1. Open the app, dismiss the "cannot be opened" dialog.
2. System Settings → Privacy & Security → **Open Anyway**.

Or remove the quarantine flag yourself:

```sh
xattr -dr com.apple.quarantine /Applications/ToReview.app
xattr -dr com.apple.quarantine "/Applications/VPN Widget.app"
```

Later upgrades carry the approval forward.

## Maintenance

Cask versions and checksums are bumped automatically by the release workflow of each app
repository. To bump by hand:

```sh
curl -fsSL https://github.com/ya-makariy/to-review/releases/download/vX.Y.Z/ToReview-X.Y.Z.zip | shasum -a 256
curl -fsSL https://github.com/ya-makariy/vpn-widget/releases/download/vX.Y.Z/VPN-Widget-X.Y.Z.zip | shasum -a 256
# then edit version / sha256 in Casks/<cask>.rb
```

## License

MIT
