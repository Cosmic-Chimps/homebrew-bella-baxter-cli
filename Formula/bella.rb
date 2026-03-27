# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.28"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.28/cli-osx-arm64"
      sha256 "02494497065e8bec18ba00ade98e332a680a849fc688c096abb730858ccb1688"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.28/cli-osx-x64"
      sha256 "85b7462dd957ebe51c9c970824192164316d519fd47f67a9fd6a12e26d68ae10"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.28/cli-linux-arm64"
      sha256 "6403b20a6b7ad0e61dcff85e157659d9eefbe4546d8a4a2676499d544997a8fb"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.28/cli-linux-x64"
      sha256 "e3921b947730cc4e805e7f3aa734c9a1275cfdaf29a4e9bbac6ed5698573d436"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end