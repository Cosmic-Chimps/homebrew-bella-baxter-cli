# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.140"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.140/cli-osx-arm64"
      sha256 "79f311ec9b35e3ee4d53ee684d1e621424206fee1dff2820260474c7184c432a"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.140/cli-osx-x64"
      sha256 "e3c7faca0dbfde19d0f7f4699c27609bd6f45d69ab84b6590315e3a83e6a6559"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.140/cli-linux-arm64"
      sha256 "883aa347b26c25b4d51f5e18ad509a25692cbb1c09a5ff6e73e8b4b2d3fe41ac"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.140/cli-linux-x64"
      sha256 "0c4836973aba4fe39163573fe5608d250d7b46f151c127d499ec1e37ebc545eb"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end