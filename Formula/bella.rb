# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.66"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.66/cli-osx-arm64"
      sha256 "6afe48512a6ceb1c1bfcadfd80abce0e9a0ec9f0ff05a5714aad7a1fffa64191"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.66/cli-osx-x64"
      sha256 "fbb28dc1a97eddc32512b6ed6658c3a20386177f745257b1fdd61210127413f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.66/cli-linux-arm64"
      sha256 "39281c38d115c49ac783d1cb3ae4488ef7b63b49fe42c81c5ed0597289e92a59"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.66/cli-linux-x64"
      sha256 "64c5c6a4452293e5209bbca9778662c021b49892dfcbf0c9c41b9f2d3c9b4e9b"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end