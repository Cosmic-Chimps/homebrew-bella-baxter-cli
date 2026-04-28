# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.79"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.79/cli-osx-arm64"
      sha256 "5e84629afe32ca809d94fdf462a3cfdab4bc88b55278905f5d2c28ac6695ae62"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.79/cli-osx-x64"
      sha256 "ec08ae8f2ca16814d0638edde1e9ea099291274564304a915b25901cf01c0712"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.79/cli-linux-arm64"
      sha256 "1bb07cbc672706fc5a475f69e76dab83745e74f3dd33f5a56edf0421b7a62ca0"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.79/cli-linux-x64"
      sha256 "85db257b03ab5fa16d16251853012af0655ff605db3f1aee4aed95b77a0642c3"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end