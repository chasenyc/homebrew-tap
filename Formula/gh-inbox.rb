class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.1/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "e8ae10149c092750599a8564cc3fdeab5f2bb5e0474b18a4172526b80c8f8eb8"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.1/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "46b6c0ee8805c687457bfd0611736c994b4860a3a71dbce5aff530a5e8659818"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.1/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "202f1238b49eab6541f85198456068723d8ce3018e511bb4719088f4ac729e34"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
