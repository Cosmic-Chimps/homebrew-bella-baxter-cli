# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.64/cli-osx-arm64"
      sha256 "514dbf6ff55df8c8d2d07e612d947e4f67bb5408c76543f9951aacd93ebc3c86"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.64/cli-osx-x64"
      sha256 "9b951f5563c1be5867c3d2ccc6d10a89bd5d6dc1d683587532a240485a749acb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.64/cli-linux-arm64"
      sha256 "910345dfc7d79d983b1ce0fab0ce16fa7d23b578642a463d6676bd092a186643"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.64/cli-linux-x64"
      sha256 "ff34dda3c0c7d20c73f62e0d81d8a3bebd7e3044b1e8a76354d41be90eceb48b"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end