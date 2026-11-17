# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.150"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.150/cli-osx-arm64"
      sha256 "85378b08274e4e0967f37e361687a60a4abdd0ddb24acae5be868f853e0ca1f1"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.150/cli-osx-x64"
      sha256 "a2eb5a9eb2b7720ab1bd24bf93d8604f87acf92aa7585aeef5f23088ce6536e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.150/cli-linux-arm64"
      sha256 "077d80ee2c5be0330762a8be5cd7f81c780737c8f0ef609fb7e484eb2a86cd54"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.150/cli-linux-x64"
      sha256 "5aa02537b92e2759529b2d7de1752e8ff98f0d1e378d4f25a96e85661901f656"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end