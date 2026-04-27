# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.76"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.76/cli-osx-arm64"
      sha256 "5b3fabf87468bec4f73b03f2e037c7aea729d055ad7d403f3a4b0fab86a7215c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.76/cli-osx-x64"
      sha256 "05c3d6dc4205fb2585c95bf935d2dfff606c19789cf334b0dc31e88891db500d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.76/cli-linux-arm64"
      sha256 "e9d6d0a21407011ab62fd9e1c8ebb91bd2ed1f0b783242f44561fdeface607e4"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.76/cli-linux-x64"
      sha256 "22655e065ef18f936d94dfbfe1429e1c80eb309da9bc55e2fc4ac87e4785f71b"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end