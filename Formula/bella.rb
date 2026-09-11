# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.101"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.101/cli-osx-arm64"
      sha256 "bc7e051e3cee5ac14cc49aa731bd062d757140616987e0a774a1c4ac6262d309"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.101/cli-osx-x64"
      sha256 "7a4535b36b71f2f4c334220686d7ccca552055e36b7d9b4c065eec421da2eb4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.101/cli-linux-arm64"
      sha256 "656129ea72017c1c34069fb22d4ca293d2f4ed58da0f1d06dcb1b168e4ca87bc"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.101/cli-linux-x64"
      sha256 "7f1ec40a40b109d23808c3d1e6e82b3baca043ed5cfa67843ce3ae974afb6e14"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end