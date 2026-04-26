# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.71"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.71/cli-osx-arm64"
      sha256 "19c565fc6ed1a6b506bb952a4ae2cb0c9cdc108b229e91045cd96618b1d8baf9"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.71/cli-osx-x64"
      sha256 "253eab263656a00c33389fb6121dc171811143c74293dc6f978d67c1f2b359ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.71/cli-linux-arm64"
      sha256 "759f9123239ec987387c948180ebbe5eb54e0ed22ce663835d106a52d8d3a5d5"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.71/cli-linux-x64"
      sha256 "4762492b7c03f8ccee3cf25d38b63910d4dfaa493cf85f3911b42274ed73d61d"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end