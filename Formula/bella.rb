# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.15/cli-osx-arm64"
      sha256 "1a89ee4bf760ff18c2339d4ec05a859c25c85e19a8c68f3fd64f84b353cb54d2"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.15/cli-osx-x64"
      sha256 "e8aa88cd058d59843d177d435613996cd4c23dfc3b18f288de09388e2a77f0e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.15/cli-linux-arm64"
      sha256 "754a90f5a223318dcc7bd78dfa5a8befed153f70aedcc1e622cadfe7e6d43ce6"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.15/cli-linux-x64"
      sha256 "61cbfd5833e422e96171b79483bdd1b0c311ba602798eb7ac55a23fa00d7be24"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end