class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.0/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "bf477ecbfeff2b10f6736776a087aaa896207ede0e3e025f66e8e9fd99f0d344"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.0/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "2e5739d9e30d6c080f87acb24a2eb924462edd5b988ba7ffa749cac5170d89bf"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.3.0/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "45a6f2726e4fc3db2b848eba8883b95a66d8f791184c6ebc80a8f4e61a0d0490"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
