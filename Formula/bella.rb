# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.124"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.124/cli-osx-arm64"
      sha256 "d251f4326809ea10db2454227f13f81c20e59424abe1c4532ae4ac5e6cef3389"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.124/cli-osx-x64"
      sha256 "b7dd51f8cf11a6d42d374c739e79bc3a8932767b2ea298e9f557f4b35f2668d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.124/cli-linux-arm64"
      sha256 "7ea412a76c6135d097ae43dc1d7a754eafbca63d047977702226cd27b0170eee"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.124/cli-linux-x64"
      sha256 "8d3c3e3cb98c2def880b1622d8df073ee6efbce75f2efa04d0524ccbc8e5e879"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end