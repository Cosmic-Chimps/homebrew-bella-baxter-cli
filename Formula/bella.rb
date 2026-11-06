# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.144"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.144/cli-osx-arm64"
      sha256 "dce5096bae3dea918cc63c09491225e884305ddffa0d80a4b5a6b8cd10841857"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.144/cli-osx-x64"
      sha256 "fe5b9282c30372e9614ae3084e0a7de6e530bec62603ce7d0d51a8aebdda8151"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.144/cli-linux-arm64"
      sha256 "f220f7d4d92ca084c5036b40c0f5a83ce79482377a00b0de6c3fb1b50496cf1d"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.144/cli-linux-x64"
      sha256 "fdb929d5cb0a0d116cdeaa8fa9b257732102a2d7bfd7966a7e925d5328b04c02"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end