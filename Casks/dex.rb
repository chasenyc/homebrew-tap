cask "dex" do
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/chasenyc/dex/releases/download/v0.1.0/dex-aarch64-apple-darwin.tar.gz"
    sha256 "aae3b617755c9bc4bf4affe1e06d8168bc3819f9c6e6748d769269a3b41034f8"
  else
    url "https://github.com/chasenyc/dex/releases/download/v0.1.0/dex-x86_64-apple-darwin.tar.gz"
    sha256 "371664e672419e5a7959a89f92d72d1cdae11d56adedd973b8ab0191f744ee77"
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
