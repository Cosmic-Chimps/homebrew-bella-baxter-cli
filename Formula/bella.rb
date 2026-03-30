# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.33"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.33/cli-osx-arm64"
      sha256 "bce18b7b7f6a53e12fa4b8397f7d560ac854678aceaffa7be49b2335c87522bd"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.33/cli-osx-x64"
      sha256 "0b8e5742a0b0f9cf3bc11c458b9243b1c596b990b934d9c7efb981c1a560847b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.33/cli-linux-arm64"
      sha256 "5ec7dc2f566135ba90c84fd7e7a7015a914a3b37e797cd796a8215687b47869b"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.33/cli-linux-x64"
      sha256 "03f48f5d5e65c1fc6562258ae634e2a0428d6f6ef7785ad6069e2b5430937119"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end