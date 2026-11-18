# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.2/cli-osx-arm64"
      sha256 "9a0fe970b7c1acf0bfce701718d0698d5db877c3d41840f7838a42018fbf471c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.2/cli-osx-x64"
      sha256 "7b7e6b2822950bbc18391e3cee21b7cab834ef5cf3f22201b50d507627d5de95"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.2/cli-linux-arm64"
      sha256 "4243d4c3c3389322f00b61807452bdec32bfef1a3693f9181f4da02c9c7c905f"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.2/cli-linux-x64"
      sha256 "4a760b19b45d8b36c1233079b59f900ecdc6c97fbf95c6742d1cb9c97c4d7ce1"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end