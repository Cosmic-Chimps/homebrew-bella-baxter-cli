# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.83"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.83/cli-osx-arm64"
      sha256 "6a0167afea79634c7839c702b049e45cabc01dff1cca6de002d0a4730bcaf516"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.83/cli-osx-x64"
      sha256 "d0e16596c603dd169a224b017ce6f468d92aa79ba58f1729ed0b76cc303f1c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.83/cli-linux-arm64"
      sha256 "d74f8bcd2bcbe2c6eac032fba15719585d281315eb87d53de813caeff15816a0"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.83/cli-linux-x64"
      sha256 "b654e70a7939bab60cc02dfd3aebb24d2f092aad2e9749bfedf9149e9834c7b7"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end