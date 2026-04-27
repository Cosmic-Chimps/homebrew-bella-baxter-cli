# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.75"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.75/cli-osx-arm64"
      sha256 "e961558e957de3791a10ff701f815d5380915618dc221a71dfc5f3a8de6a5796"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.75/cli-osx-x64"
      sha256 "6eb79975b58ded8784d7fb22801b41b6e34e6bc2c119f41b4c4f23a5954655de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.75/cli-linux-arm64"
      sha256 "93a9d5bd5f629476079b03b6392be097d091daf92b3c369cdfd7249b87096816"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.75/cli-linux-x64"
      sha256 "ab565579582ad5fea205cc0ad10872ecc04f303a25d892fb2fc61d677b7a2dde"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end