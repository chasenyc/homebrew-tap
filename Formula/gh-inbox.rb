class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.1.0/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "4794c8112cf052c4629d8af95b158fa9fedb6f0bc8c59de93c18225b961ec3cf"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.1.0/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "10e9e15549f8624c5e8ffd03b6aa495168848f9a25616d937e9c9d2c05899309"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.1.0/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "3be413c84a1959d92555cccbe845cb75031a6c997916e50064a2094643ea268f"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
