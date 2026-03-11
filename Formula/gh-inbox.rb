class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.3/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "3d1a13cc5bdf661554441be20cf483a077d0ff746c13ecfd2bf4c7d459f3471c"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.3/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "f03772be0aa6b908d813f1068d7d5b10599aea52b8e7d644b94957ebd2720ed0"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.3/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "c5df301616fbcf9f1c97531807c47ff6350047388e8b6e10b7561e7ab17a24fc"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
