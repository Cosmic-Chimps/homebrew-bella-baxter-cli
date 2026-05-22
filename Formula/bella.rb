# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.90"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.90/cli-osx-arm64"
      sha256 "85432007c2e162ce70a3a0214d47d2f6c682516c08b5e67b11651605f9b3b18c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.90/cli-osx-x64"
      sha256 "e8c1ae03e4b1efd8168919927f68642be485d91454406bb542b5ff8234b5ff6b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.90/cli-linux-arm64"
      sha256 "75a027c0691563bee5236052bd26592e91d3d8e0a539d12b6a5fb4b7a1a20eac"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.90/cli-linux-x64"
      sha256 "86574484298f4e90733dd1284b2ba8b27e0ec3683d3c036cabf957567ba6276e"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end