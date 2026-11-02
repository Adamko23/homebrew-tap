cask "brew-store" do
  version "0.1.0"
  sha256 "6515f39d061a4ca2ddc2fe5ca825b55393de78460ea4085796f2458f645d2707"

  url "https://github.com/Adamko23/brew-store/releases/download/v#{version}/Brew-Store-#{version}-macos-arm64.dmg"
  name "Brew Store"
  desc "Native macOS manager for Homebrew packages"
  homepage "https://github.com/Adamko23/brew-store"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Brew Store.app"

  caveats <<~EOS
    This preview is ad-hoc signed and not notarized by Apple.
    For first-launch instructions, see:
      https://github.com/Adamko23/brew-store#install
  EOS
end
