cask "brew-store" do
  version "0.1.1"
  sha256 "1b125d9e04aafa0c96879701bfe57c1d8c66e223b13ef91343fd1ea42f14d3ae"

  url "https://github.com/Adamko23/brew-store/releases/download/v#{version}/Brew-Store-#{version}-macos-arm64.dmg"
  name "Brew Store"
  desc "Native macOS manager for Homebrew packages"
  homepage "https://github.com/Adamko23/brew-store"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Brew Store.app"

  caveats <<~EOS
    This preview is ad-hoc signed and not notarized by Apple.
    For first-launch instructions, see:
      https://github.com/Adamko23/brew-store#install
  EOS
end
