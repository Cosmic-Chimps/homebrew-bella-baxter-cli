# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.128"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.128/cli-osx-arm64"
      sha256 "52988c00da17bd358008e2d4acbe7b0af59e33306292c52295342db72c96bcaa"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.128/cli-osx-x64"
      sha256 "611d93bde64f07fcdeef9390bcf0bf2105d5241ba0b1142ad80b64f46cf04f7a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.128/cli-linux-arm64"
      sha256 "a96657d3eaaac6509e373a4bcced83605b15557477e65129dac1cf2afd95eff1"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.128/cli-linux-x64"
      sha256 "798c3e4f96a10a4b05a30020b0b0412bc2a9a6dbc80e82f1f2c70a3a866d04a4"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end