# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.58"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.58/cli-osx-arm64"
      sha256 "e24e421b2935feee1f5673c4064624c5d4e7bf8d4d463243c9c0c3ac7bb9f2c8"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.58/cli-osx-x64"
      sha256 "849c50fc9c2ad53ed2036770993c607ee425d7a7008062a773cd36ef7915034d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.58/cli-linux-arm64"
      sha256 "0fbb3ebfb5165762e33f70371dcf1b9a3e7429637c6dc96c540ab128385417c8"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.58/cli-linux-x64"
      sha256 "4e5a08cf8400452c83f9555227eb4db68dc889515eef31368184b01ed03dcee7"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end