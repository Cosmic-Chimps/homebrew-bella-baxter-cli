# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.12/cli-osx-arm64"
      sha256 "800f09d00599cb438001ba2ba8fb8d60ef9c9b4ebae01ba1496caedb02b37440"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.12/cli-osx-x64"
      sha256 "57a1fc29d55c98a2475a953a3e4a154bfc1e66711b9bad034d7eb0e2c87f43f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.12/cli-linux-arm64"
      sha256 "d08bca6bb42cdaf77b18363131f9afcdf406686033f7df1eaeca7bfdee527144"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.12/cli-linux-x64"
      sha256 "ea7787cb021498a151784bd3b2704d9559d7cd9604d16731a6f9beeecbd44f1d"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end