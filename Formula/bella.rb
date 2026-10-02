# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.123"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.123/cli-osx-arm64"
      sha256 "70bc63238a3f923ca00d719751d4c7e4a525f42767771de570fb68423a968f25"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.123/cli-osx-x64"
      sha256 "97b200e0279eedcc4ad207aea51ac974d32f5136fdec3ecd96639e2eb07044e5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.123/cli-linux-arm64"
      sha256 "5da174e706f0ed7f24b21c3b31effb35b1aaf07c83fb9875c39083d9e62d0749"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.123/cli-linux-x64"
      sha256 "dfbe8aa1b33c6443879bf6dfad6a1802d37d2752c41a1c2d62de67d10d363ae1"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end