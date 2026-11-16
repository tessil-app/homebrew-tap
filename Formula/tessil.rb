class Tessil < Formula
  desc "End-to-end encrypted file transfer from a terminal"
  homepage "https://tessil.app"
  version "0.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/tessil-app/tessil-cli/releases/download/v0.1.0/tessil-darwin-arm64.tar.gz"
      sha256 "0841833e3ead9d55209548eac8c7075758179c4bad9d4167ef217ba98dfad6dd"
    end
    on_intel do
      url "https://github.com/tessil-app/tessil-cli/releases/download/v0.1.0/tessil-darwin-x64.tar.gz"
      sha256 "ad76a6628058e74ffad8cee36aada00f736ec8f685954b9b6feb0f708e47b96e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tessil-app/tessil-cli/releases/download/v0.1.0/tessil-linux-arm64.tar.gz"
      sha256 "ff4735de4ea1964e0e4e808d110ebb1aebacc4c459b43203ffd84f3ec430dc82"
    end
    on_intel do
      url "https://github.com/tessil-app/tessil-cli/releases/download/v0.1.0/tessil-linux-x64.tar.gz"
      sha256 "a33d3f8dd2ae1e2af3b85c20b5b94c349910c6a2221279ad4e1941aa4832c717"
    end
  end

  def install
    bin.install "tessil"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tessil --version")
  end
end
