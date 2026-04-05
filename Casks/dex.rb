cask "dex" do
  version "0.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/chasenyc/dex/releases/download/v0.1.1/dex-aarch64-apple-darwin.tar.gz"
    sha256 "bcedfa5b6ca169f3e32658e836499c0b80d1a922bafbe750b7a3276cab128788"
  else
    url "https://github.com/chasenyc/dex/releases/download/v0.1.1/dex-x86_64-apple-darwin.tar.gz"
    sha256 "d7029b46ddd3d5b951aa8aa4f6d7bf845ba4e0a4f4e1959ad2ae078c3a6573e3"
  end

  name "Dex"
  desc "Kanban-style Claude Code session manager"
  homepage "https://github.com/chasenyc/dex"

  app "Dex.app"

  zap trash: [
    "~/Library/Application Support/com.dex.app",
    "~/.dex",
  ]
end
