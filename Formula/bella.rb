# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.118"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.118/cli-osx-arm64"
      sha256 "6a0f714cce34693ab4801d19d8eedf7a8e3612585d61705a95782b228f5f038e"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.118/cli-osx-x64"
      sha256 "fd58151d6fd403599be57de19f4de474ccd54f9967f12545a9df315827a5f9f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.118/cli-linux-arm64"
      sha256 "06401f8e5036e1043990bb61a812cc2730e7b38da67a9583258cd1b9c84f2365"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.118/cli-linux-x64"
      sha256 "a5f408d36f5dcc17aa4830b67079c67ebd0831f5eb2872fea5a803c58898b3f6"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end