# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.47"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.47/cli-osx-arm64"
      sha256 "e20977e27f30d95c8f8a4f94b11b95a0253b90630eea64c26e4c3b290164cfe1"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.47/cli-osx-x64"
      sha256 "4b5f7501e1996378586f536c8d2de466bb1d645446230f698e02e2f734b7dc2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.47/cli-linux-arm64"
      sha256 "bb68cf2a0f4bbf36ead65134fa6948f5d130b7da1d80259318eed2b128e11639"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.47/cli-linux-x64"
      sha256 "f8d5c012bca754aff8dd0be4adf6ed85bc1b50b087b30fb5096d329c848e6fde"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end