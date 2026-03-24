# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.9/cli-osx-arm64"
      sha256 "ab496f5d6d074e4b64a19ad7d4fec46965ea872d7315b054de9cb53c23517e1a"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.9/cli-osx-x64"
      sha256 "354804330ccfad685a9c2a8bb0b878feb4f77bddf840db97beca91e6a1bce116"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.9/cli-linux-arm64"
      sha256 "3e6759b76b4dc0d2168a2647bf0f62cd17918e2a8639224a5512b2bde6645a7f"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.9/cli-linux-x64"
      sha256 "f3971ed5c0c3651fac04edc701caedaabdc9d7486a3e79ba93dca51f6f6c950b"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end