# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.34"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.34/cli-osx-arm64"
      sha256 "435424b44b0e4843bdb8e57a74f657e54e6d91e69c511cdf2a318486f50a4888"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.34/cli-osx-x64"
      sha256 "9570e433de893d9bd1c8891ddcf57f9364eb028f094ea70ef374a37d2a7c684b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.34/cli-linux-arm64"
      sha256 "5ffa2d1c48cd1668f0a3b6d78d8057ca16dbf6d24aae0aa6d6e3f386a4c874a0"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.34/cli-linux-x64"
      sha256 "f6d781dc929f9fb60f12a6c2c6b4e40e2c460bc6247132a9ceea93edf51f2a7d"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end