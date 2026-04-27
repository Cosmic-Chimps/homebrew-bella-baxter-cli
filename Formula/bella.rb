# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.72"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.72/cli-osx-arm64"
      sha256 "32f60dfd323d63f896b4af102e360f146c5c5ab7c8a4529ae75b7e7170c2d691"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.72/cli-osx-x64"
      sha256 "3ad73bb72d01cec2694d7d9944c4a272d718180d2b122786b1ad902bb55ab597"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.72/cli-linux-arm64"
      sha256 "2c411fd39ad07984ba58cb2a35b844fe256b4f9f856c08512b143458d9ffbeaa"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.72/cli-linux-x64"
      sha256 "95b490620d5b000569d25c7e1fef19479558f20aad95a21a135eb24c2144cf86"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end