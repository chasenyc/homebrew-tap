class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.5.0/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "3453fca6d68140fa3038e2eed37c5ecdd3dcc77f11cf6a60df7467031e64ff83"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.5.0/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "51168a9c43970512a60c039ac19f6bd139df5ac5862e9f53d8fde6d8f16ada38"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.5.0/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ba6d277db2e6eba44cb13de03ac8326c6dde83e5da984bb78be024acda83f6aa"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
