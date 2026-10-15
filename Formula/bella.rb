# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.134"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.134/cli-osx-arm64"
      sha256 "f77a20cc37be9526c22e1ca291f812f348ddb5be6bc7807cd9b2758aac44d4ad"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.134/cli-osx-x64"
      sha256 "af3654d58e703626832e8db8b99179bf834e999e4fae19e37522d5f1e8bef4fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.134/cli-linux-arm64"
      sha256 "59de1d2500908e8da25f0b908e54b823ebe925224873fc38659b3dd1a6cd907b"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.134/cli-linux-x64"
      sha256 "a719c14f9c1ddfce96af94eed61797667ab7d6df1b52fdcbd66452e3e6f6d36c"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end