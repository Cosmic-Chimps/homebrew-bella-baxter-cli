# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.105"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.105/cli-osx-arm64"
      sha256 "e67826d252c7f20239d2623025fabcc81d81ba8e58b5780248c091fead0e422b"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.105/cli-osx-x64"
      sha256 "f9a446ff457f6b99e900845af8bc12e3920eefbe59433d8de86557a98bcc4f65"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.105/cli-linux-arm64"
      sha256 "91cf8e9dafef1192aeef5db230efb2fac209e3813326c6adf8e9c2124c5b2753"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.105/cli-linux-x64"
      sha256 "a86d1793089b94d53cd38740efed3fefd63510cdd19939253a82e62ab5ae4f80"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end