# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.53"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.53/cli-osx-arm64"
      sha256 "704477a7fd77940c88fdac8af6f439046273df75bcd7ca305d3f97df6325898e"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.53/cli-osx-x64"
      sha256 "7ad1e90d08d924eae2fbc5131b85832733e738123d3916ffc9f6c4420c7c5f67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.53/cli-linux-arm64"
      sha256 "594ea95ed23f26653d62b00022205df40a4815897d1ed0f6cec8cc856333b8a2"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.53/cli-linux-x64"
      sha256 "db0600151f7a265a36fd39a3fd0b378d6d706d998725bd7b78949533c6b024f9"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end