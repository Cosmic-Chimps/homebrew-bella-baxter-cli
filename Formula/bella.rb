# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.113"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.113/cli-osx-arm64"
      sha256 "26aab308c0308078a52019abe59e45c3dbd2b767c2dfe832e689d51dead13c89"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.113/cli-osx-x64"
      sha256 "c9270e7097fd414a4570a86b99707c04bea7c1a814464fb5a642d13f4c729f6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.113/cli-linux-arm64"
      sha256 "fba8ac4994d8e624995100241c469871ae9e12c04a51c77dc0fe09453c660d2d"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.113/cli-linux-x64"
      sha256 "f39ac7d6886f35efe87b59bf20e6024fa2402a8c5c570cc93eb9347e62e82086"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end