cask "vpn-widget" do
  version "0.1.0"
  sha256 "959d5ea54e578079c1c2317d0a62b928e01113d25b38343d4a15b73f3d8fbd92"

  url "https://github.com/ya-makariy/vpn-widget/releases/download/v#{version}/VPN-Widget-#{version}.zip"
  name "VPN Widget"
  desc "Menu bar status and control for VPN profiles of FortiClient, AnyConnect, AmneziaWG and WireGuard"
  homepage "https://github.com/ya-makariy/vpn-widget"

  depends_on macos: :tahoe

  app "VPN Widget.app"

  zap trash: [
    "~/Library/Application Support/VPN Widget",
    "~/Library/Preferences/com.ya-makariy.vpn-widget.plist",
  ]

  caveats <<~EOS
    VPN Widget is signed ad hoc, not notarized. If macOS refuses to open it:
      xattr -dr com.apple.quarantine "/Applications/VPN Widget.app"
    or install with --no-quarantine.
  EOS
end
