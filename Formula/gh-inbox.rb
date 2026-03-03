class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.2/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "0e57a8a57afeb9db0feb394a741c13a85549b349fab0fef289ee425553fafa73"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.2/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "e073015ea324c59227848b5db614a0e29c627ae009d0a2ac411ed7f1f53051fe"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.2/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bbe96a593f4e0fd244f2c5000cc079eb32e2036896d7e9c11ac1e4f74706fade"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
