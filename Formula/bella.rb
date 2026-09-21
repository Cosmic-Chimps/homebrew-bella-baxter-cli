# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.112"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.112/cli-osx-arm64"
      sha256 "f0ea5c5c1eeb1e535f107303a08596b670290c385791be4b0511b7c0385360f7"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.112/cli-osx-x64"
      sha256 "82ca391f63d10797dc140419882d68d283b0057d78d0b4f0d18fafbe4835dc54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.112/cli-linux-arm64"
      sha256 "e4c14f5b99d62f936c8853f86a6367d0974e9246c488c681b213eda35e1d6521"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.112/cli-linux-x64"
      sha256 "9526401cb66dfd91ca9cc85711080fd79d5cd0ddfc460b4c3d209c1417a70f7e"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end