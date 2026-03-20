# Homebrew Cask formula for Floating Clock
#
# To use this:
# 1. Create a repo: github.com/surya-prakash-susarla/homebrew-tap
# 2. Place this file at: Casks/floating-clock.rb
# 3. Users install with:
#      brew tap surya-prakash-susarla/tap
#      brew install --cask floating-clock
#
# After creating a GitHub release, update the url and sha256 below.
# Generate sha256 with: shasum -a 256 FloatingClock.zip

cask "floating-clock" do
  version "2.1.1"
  sha256 "87a18ef9cc28e5316ce0d1f3940924a78f62ab2d7f765144b52fe4902a1042ca"

  url "https://github.com/surya-prakash-susarla/OnScreenClock/releases/download/v#{version}/FloatingClock.zip"
  name "Floating Clock"
  desc "Always-on-top floating clock for macOS with timer, network stats, and system monitoring"
  homepage "https://github.com/surya-prakash-susarla/OnScreenClock"

  app "FloatingClock.app"

  zap trash: [
    "~/.config/floating-clock",
    "~/Library/LaunchAgents/com.suryaprakash.floatingclock.plist",
  ]
end
