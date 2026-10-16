# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.135"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.135/cli-osx-arm64"
      sha256 "31059d92a3960fbed4a5b8686d003cfdd27c68356050bcc1b1bc6d0bea0e1780"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.135/cli-osx-x64"
      sha256 "d25218f4d9d32297f1b3c471b027345c299dca54fc8324056e336daa1206aa73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.135/cli-linux-arm64"
      sha256 "9001a8328c8694e9c7d7842fa564e009786f87f7efdc81e8e65a87584672d649"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.135/cli-linux-x64"
      sha256 "d72c6b1d6da76fa1b548c1a3c0c80e3cc87431c5e997f1ffa26245ec90ce2b83"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end