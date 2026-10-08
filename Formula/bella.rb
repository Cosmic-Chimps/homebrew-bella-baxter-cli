# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.129"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.129/cli-osx-arm64"
      sha256 "bbc84128600ec06b55382042c4dcbb45f7084afb01ed9024e3f1d29e5821403a"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.129/cli-osx-x64"
      sha256 "eb5367c631921179c49306e607f7a8f37991d5d13a8c80b042db4573caa7b191"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.129/cli-linux-arm64"
      sha256 "1a212e8982299027c75e79d3fbef9cecdcafe295d63df061ff5474bf69c4464c"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.129/cli-linux-x64"
      sha256 "6284a172e02ae81c5b188e2443f347821f341ac7e1d4ba8cd0bcabb5cce1ddbe"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end