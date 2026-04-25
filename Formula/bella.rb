# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.55/cli-osx-arm64"
      sha256 "6ad49264d7bb107611b49868d80d7246d63c3856b1cbf83db97d9abee7f67a88"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.55/cli-osx-x64"
      sha256 "07fda7dd03a722c9da50a663e49e87b09aca8dcb95921ad771e391c21f569a6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.55/cli-linux-arm64"
      sha256 "65cc68220ca4d08f2d8132c44572615b7b0627473edf9b85bcb0f40d10c1c9f5"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.55/cli-linux-x64"
      sha256 "2e63ae858ee1e0caa14af00b7def01d8f1451e99216e50ba68e685f7610f1de3"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end