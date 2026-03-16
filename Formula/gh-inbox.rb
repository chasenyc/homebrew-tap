class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.2/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "34c194e4e8592fdf667366f9ede63feeb6f41e0eafe6964f46a716e9aa05a613"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.2/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "cbf42a65c9ec5bff9f240cce6c9da935717a60e8d4da55cb10eac70b95da88da"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.2/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "67c326d3839de70913fce6e3bce6c66aa97fd05e36cbc6e8778adfce6530bb54"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
