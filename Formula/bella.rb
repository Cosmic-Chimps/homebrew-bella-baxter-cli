# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.51"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.51/cli-osx-arm64"
      sha256 "417dd3f0f2fdd8cf8d9d862a6fac012439d5e298956c891a2d845969af2febd7"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.51/cli-osx-x64"
      sha256 "8ca21a3a1bd358311bb434851b0b61f0afe801c76830ee37c75cd4680465a0d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.51/cli-linux-arm64"
      sha256 "ac797bd144c1161851eee4d906906c444b1f31fe8fd94f3dde78375c4e043568"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.51/cli-linux-x64"
      sha256 "140f8667e109bc9e310c936e98d71f76e6ad6e25b1ba60d85356d957b209c591"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end