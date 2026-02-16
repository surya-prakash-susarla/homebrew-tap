cask "floating-clock" do
  version "0.0.1"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"

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
