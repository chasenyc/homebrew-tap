class GhInbox < Formula
  desc "Terminal dashboard for GitHub pull requests"
  homepage "https://github.com/chasenyc/gh-inbox"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.0/gh-inbox-aarch64-apple-darwin.tar.gz"
      sha256 "163d316235f28dd1acddbdda5bc178c2aca61d6c1d515d9eaedf95532cfa67be"
    else
      url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.0/gh-inbox-x86_64-apple-darwin.tar.gz"
      sha256 "f4893e8466ce9f1b3f4b857275a0dc9e7fd0f7daedb96c9d6b542142ab53d6f7"
    end
  end

  on_linux do
    url "https://github.com/chasenyc/gh-inbox/releases/download/v0.2.0/gh-inbox-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "9be5512e544ab872d7acccc2b382dda3b348c2cd7c8878463a3e9bfe61909d24"
  end

  def install
    bin.install "gh-inbox"
  end

  test do
    assert_match "gh-inbox", shell_output("#{bin}/gh-inbox --version")
  end
end
