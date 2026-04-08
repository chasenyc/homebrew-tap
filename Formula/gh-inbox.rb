class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.6.0/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "e4daad0d2f406420ca5a6fd218c4e80a904b408b0807facb0eada829bdee94ac"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.6.0/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "f131f2142ac92e87f2343a3c813057df6382150bcf58371f8135d6762f3fdf3c"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.6.0/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a09d35c8655ab74bc0553f15fc287ff9b9043863f32aa2dab5ff945752c404d2"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
