# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.21"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.21/cli-osx-arm64"
      sha256 "2a4aa0117149a8a847d24247bcf7a2020e4d6da85fd0d13e8375a5c51c88edc7"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.21/cli-osx-x64"
      sha256 "4d1a3ef3a269a178b1aa28a558a4c09a537f672a1566c32f89fa34744ce407e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.21/cli-linux-arm64"
      sha256 "73316f9ae3eb033da430e58d4742a8b1888017b0d7d3699f02da7576cbe21fe7"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.21/cli-linux-x64"
      sha256 "a278a9156945c77a3629118df674aa0046849b896bb2a1876af35c2c46ea3026"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end