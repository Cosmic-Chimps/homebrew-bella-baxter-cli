# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.100"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.100/cli-osx-arm64"
      sha256 "808b7e7e2d0fef10da01767bdc0c72dc35136f0a3e2c4129a8fb00876e5479e3"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.100/cli-osx-x64"
      sha256 "0acaf91d80585de92dd2b3e1657250556b6f78a8a15cf833cc58f8a670d7a66c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.100/cli-linux-arm64"
      sha256 "c10d6fb737ad7a2ffc67cfe6370311095484fe7fc7b48cdccf3f9d5dbc6b844d"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.100/cli-linux-x64"
      sha256 "046dc5f65cdfa7a5814e628305f1bf462f7c8c8e22ef85b881dcd430b0e0339e"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end