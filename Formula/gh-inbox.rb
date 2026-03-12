class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.1/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "9b868bed2e0f81f4fb71c18aded462c70b1f717a14317737e16b1e3293c63639"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.1/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "4b82da218cf9fc2a9a156b510fde06fad2c6e85f75f0f79d664a8ba3606ac9eb"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.1/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "dff0e666cf8f9fc8302566790263a526b9b173a0edb3e92c327fd85f05485615"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
