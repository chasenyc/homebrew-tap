class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.1/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "5368dd5b11d9e25eda97a1dfa70d1c946c039a6d9133d40a29d94d0b7b63f4e7"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.1/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "16682616a003bcf1a8f0833165972e71158b1d265c8fafbd2b6c099db85f212b"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.1/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "50b26e442def6b815e44590cbe22a37ce860be422365b990102bfb5ca3fb4a90"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
