class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.0/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "bfdbb4de117691fb4c5548840b4b2f31622bb7d9b3c9181b22a7a2fed7a02ff1"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.0/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "be7d6b5089d2dd84cc90c61b244bd50e6a876828bde9f3018e6fc62d129e630c"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.4.0/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2d7dc96979e22c4c4e71dfd1dfde729f5c3c0a8eb0ab9767b0f1cda556059911"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
