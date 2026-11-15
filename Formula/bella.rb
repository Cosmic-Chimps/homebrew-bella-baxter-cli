# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.147"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.147/cli-osx-arm64"
      sha256 "a748f9b40e60b0f6e7ab7a06eb4e2d516d762d3fd79ab648c8ab9e18c258e06c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.147/cli-osx-x64"
      sha256 "014372e8be7e6c1dd8c7699e02ab15ac3d9c61f22771f1a1f7cc50ba61909b3e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.147/cli-linux-arm64"
      sha256 "ef54f54994d2c6fb6d881b12319b838eeba73f2cb81350faba180cfba945b9ee"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.147/cli-linux-x64"
      sha256 "c650ea67acba4b9aeae997f1c87aff5d45ae07e376c89243595f8237409840df"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end