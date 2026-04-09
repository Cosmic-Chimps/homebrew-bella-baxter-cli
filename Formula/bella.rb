# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.48"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.48/cli-osx-arm64"
      sha256 "f4e847e3369234f5e35b02eccc4c6027c440d5c62dd248d442969b18d6907991"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.48/cli-osx-x64"
      sha256 "8ef649bb45ddd216f448ed83e904beb881c90e6fd9799d71a9579acf8a80a2cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.48/cli-linux-arm64"
      sha256 "b654b0c178a5fcc4f59ee8701ed5a3b5b0779494ded419a6f705cfe82983b229"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.48/cli-linux-x64"
      sha256 "c48c56e64e45aabef898ee0f829a260ea83edc955df85b8aaf9c9c707f6c06e8"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end