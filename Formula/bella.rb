# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.132"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.132/cli-osx-arm64"
      sha256 "4237f304c78373148a0a541e4240931c72440619983917e9e585c030aaacd379"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.132/cli-osx-x64"
      sha256 "32ae2482b5f291448c6bfec11e55a07cfc30a208edfd709d9e3ef7ee165a5aba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.132/cli-linux-arm64"
      sha256 "85c67c5a974dad08d9d1616a66376964562b6a6ddc3e3428808b50f09691eb38"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.132/cli-linux-x64"
      sha256 "483393b13a545cd5a2f169e45edc3d9385d81dfab87c3ed07da09ffc5767bc64"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end