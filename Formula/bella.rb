# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.94"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.94/cli-osx-arm64"
      sha256 "966184d364acbe65621e12d6a40da5be2b3359159dbdc2e33ee496acf56a5875"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.94/cli-osx-x64"
      sha256 "537efa65d2f9a36bf0a2d000c8fbd55fa85a4b8e80a30773c75c790184233d6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.94/cli-linux-arm64"
      sha256 "82f47d6d2c51c993faef4b898d6db259028a6d741c3c700861490f2de365abb9"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.94/cli-linux-x64"
      sha256 "540874cf8d3e7260ee863b8e2e52e82a71dd61820634bd0fd8707497af8b6d3c"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end