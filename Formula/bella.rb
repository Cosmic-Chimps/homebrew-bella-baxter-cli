# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.146"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.146/cli-osx-arm64"
      sha256 "7074243eea019ee3a899a40d3fdf928d7758b6a94c464ff2dc5fa35cfdd7c221"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.146/cli-osx-x64"
      sha256 "58303e54890354bc341d1eb20e332652aead8d500cd11f70580b9f6ca4a03e7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.146/cli-linux-arm64"
      sha256 "8e94b9c8c957c141c6d5329eb9e532f513aa0db4cbd0cfbd950cd0617931543e"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.146/cli-linux-x64"
      sha256 "e81c9b26a8b560d5e29c2272bfb08d09d042ff08427a8d363e02ad136461c430"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end