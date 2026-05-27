class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.7.0/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "c9ceb8153bfe0ba8bb18c0ee99a7558bc2550fed4d54b49b361ad49236652cf5"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.7.0/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "74a2dabb690ee20d4706940337955b5a3286acd9bf98d3eeb7b026e878dbfbfd"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.7.0/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "181f9f948649adda4b68755b093dcb1affc59fcee064719ae2c85aac84679ae0"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
