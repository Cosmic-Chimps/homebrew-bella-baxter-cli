# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.85"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.85/cli-osx-arm64"
      sha256 "edd906fd94910fd07d0b75725c7ade22823ed2efb7c8817f8a2e73c24a926419"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.85/cli-osx-x64"
      sha256 "a4c030d69b011d06d0d2bfa8ce0dddf7c6e45ef9a9a3ee7c16e59ef915f26d89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.85/cli-linux-arm64"
      sha256 "ee848f8a7f8fc1ca8111dad683d693e2ada6599ab80d3d50c2e908710d097831"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.85/cli-linux-x64"
      sha256 "9ffadf57ff8d518c899a5bb14da331ad74f20c929006c62fafb1a365c825232b"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end