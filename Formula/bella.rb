# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.119"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.119/cli-osx-arm64"
      sha256 "0aac2c7add2b7a9ca88c47ec4c7fc7d2cb8d8a7ca994534ca0f91b2233373999"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.119/cli-osx-x64"
      sha256 "f33d3db6730ed4d17a289ee94ee4abb271903aa45964ba3661f5106636911f08"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.119/cli-linux-arm64"
      sha256 "fc6c75aabc7c899470bb4b6a53103672c82da7239e3ff38fae250f6ac0a1332c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.119/cli-linux-x64"
      sha256 "f20fedc75c3843b1dc2b952fe6246a45b21e98005bfa3b404716b52814df2f7c"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end