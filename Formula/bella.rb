# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.148"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.148/cli-osx-arm64"
      sha256 "450e5b33857814f2b63ee86747984b2f9bfd248e2eb91023cf37fa5397493e54"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.148/cli-osx-x64"
      sha256 "78f85f2a71ed9f88e8df25ce2c4262a33be0f8bfd45f13c1071c559077b1b1fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.148/cli-linux-arm64"
      sha256 "dbde45bda5852f79be6af21299d4042a1cde3f99c233dd80a7f013577502a7e5"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.148/cli-linux-x64"
      sha256 "aacb13092fe5b75517e9a8c33a5049e503bba51ab25900dbabf14673134567fd"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end