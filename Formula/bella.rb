# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.137"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.137/cli-osx-arm64"
      sha256 "a316cdb12addcc8808e01f3e019a1b4a9851c69bed2c2233b5a1bff9468cb955"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.137/cli-osx-x64"
      sha256 "200b45818ea05a19fbf1d200f448b84bac40816870c1d46d76036f87b4543323"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.137/cli-linux-arm64"
      sha256 "cc9e516ce1584d51fb35db810998acaa1f0a6b1b423972bebeb14e873181341c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.137/cli-linux-x64"
      sha256 "562e49294ecde954f6185d76a07efee9c3103567292d2433dd56b864f9512ee4"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end