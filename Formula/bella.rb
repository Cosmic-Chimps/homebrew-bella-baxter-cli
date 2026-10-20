# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.138"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.138/cli-osx-arm64"
      sha256 "6eeb612a62b200f5963f128cc18a415a2d55b0f069d174685b131a646b5d62f5"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.138/cli-osx-x64"
      sha256 "9dbf5086c413bce94b5eeae15e6ed04ef343abdca57d0b9a0459c8f62e41dc9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.138/cli-linux-arm64"
      sha256 "d6b138c5c63132a0416e16f37d8b0ac26e174ac9d84e9a4ace9a1d969fcdc9af"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.138/cli-linux-x64"
      sha256 "5f2bc3bdcc6680bb6a86ac346b1b9b299d3a2ca4ac19fe3993619bdac2ed9dc5"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end