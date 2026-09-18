# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.109"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.109/cli-osx-arm64"
      sha256 "9dbea165c56ad8c86c6d905e06d133e122140d0d08b0e96be15dc92c896df9ce"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.109/cli-osx-x64"
      sha256 "c67d2a21880c9bb2ed40fbd213b0d91b81ccd84ddad57da7dfb2e1ced996fdd1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.109/cli-linux-arm64"
      sha256 "f577d0ba0e4bdecbc7421616cc0aa6a0a4a27036cac775d42eab2d472ae67728"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.109/cli-linux-x64"
      sha256 "4bb6851ee09081226404031f83f803fd1ef84b7271b1274ce6a5bbb72bd6400a"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end