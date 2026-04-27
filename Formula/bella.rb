# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.77"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.77/cli-osx-arm64"
      sha256 "270ed66ba2fb9cc412061c66ced058aaca3ea2ae36ce680793f229ca4df4bc6d"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.77/cli-osx-x64"
      sha256 "4d42dfae9ffd89f72d59995735a2f3d969fd75a142e8585d8ea3d5bc27331201"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.77/cli-linux-arm64"
      sha256 "0385ae1c604c0fdb1df1b9bb57dd253a81f96a2b2b9e2f702b0863b704ab96dd"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.77/cli-linux-x64"
      sha256 "33638eba232212ba0cdb24ea27bcd2fe5afb9a144934cfadeddfe2059b81adea"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end