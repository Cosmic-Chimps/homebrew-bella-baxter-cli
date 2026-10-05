# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.126"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.126/cli-osx-arm64"
      sha256 "c7c6bcd4c78006ad8b87d2b1c8af75af6b35bf6ecaca66aeaff8975502aa6b66"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.126/cli-osx-x64"
      sha256 "44bff2cf950e0846716c099e84e1003a5a65fff4dfda4fe2bfcee69ef7e4b74f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.126/cli-linux-arm64"
      sha256 "f0bc50d4b231e422e9d66f04d8977e65e4468fa259a2e77b13a50bcbedef7dfc"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.126/cli-linux-x64"
      sha256 "fd24ef6b4f1f830c83c0b4fa09567e82c8c1aac291ebaea6051ab6fdefa54bd9"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end