# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.54"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.54/cli-osx-arm64"
      sha256 "6c1d38482e434bd67517da49b319a169e9beb344e4b0f08c3f6d59df8b12fb0c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.54/cli-osx-x64"
      sha256 "8421f20840ae1b9a0013d63b203d6c59c16053f02d8fa3f925c4feacec3e38d9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.54/cli-linux-arm64"
      sha256 "2ccd56b07773a43715f3cbf6209f532d03b0d7d40f8a3031edc2c46ccdff99a5"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.54/cli-linux-x64"
      sha256 "58083e9adc847c0910a214920880c0e18b3ee70b07aab929067d43c744029cf6"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end