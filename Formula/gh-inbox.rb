class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.3/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "430ba29ba0ae545aece54d373eae46d9a9d62acb3eb867493672e1a7e417cb44"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.3/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "ad39d7fbec72a874dd71878d1cf2bf614df4f5ca37583f125d9a5479b81f693f"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.3/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "0add353d1bc0d0a265830278e8d84529a043abed77cd578f63f9cd1119d4ef76"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
