class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.2/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "a0e1b6a4a8a679c11c0d9b7a1699c549285c05eb883912cce7f6791900455752"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.2/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "6bd041e360fd089817a78e5ac94b5cf5d75cfc063cdc68b8372ce5b6c7974706"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.2/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d7426ae37ea563bbd06a6a0dfe481527a9cba4c183b7a152dba165fc343005ea"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
