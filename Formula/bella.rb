# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.108"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.108/cli-osx-arm64"
      sha256 "a69f91c308ca2ba61313688c8c82d8e77891c2f4fd91c6243d20366f75635ef9"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.108/cli-osx-x64"
      sha256 "74edd09c472ce48a8eb9da8e97796ccd5b7ac48ff2d23db1bf6f50f552e9fb7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.108/cli-linux-arm64"
      sha256 "c147e83095af6ddf933e3051bdb42bdded7202dc5ce69d261226612530d8f255"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.108/cli-linux-x64"
      sha256 "5f161301a5f5a5fdb2e2f7b7fedb3ee032827234ddc3c21a47564f347c492981"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end