# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.86"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.86/cli-osx-arm64"
      sha256 "73da609b3437b25e576c9f3e005245575a1373e371f4ccc759b3fa6c9255a276"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.86/cli-osx-x64"
      sha256 "f3fe1d8d245ae6af1705ae4e964d83156ace4568f2839fd678a5446e5611b368"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.86/cli-linux-arm64"
      sha256 "28ed253cf1817f6ce9ce19dba41642df748087ac42a6094365a6ff1dfe15619a"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.86/cli-linux-x64"
      sha256 "2d1bfc7634299d6eb585f02120cdfb29b63701e856903ba5b3063b5b4c3b6709"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end