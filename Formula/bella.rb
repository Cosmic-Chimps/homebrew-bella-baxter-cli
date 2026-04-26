# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.57/cli-osx-arm64"
      sha256 "0211d56c1accad894d116d9da72fbd3fc48efb1e4b3cc3b992f1b139ea074622"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.57/cli-osx-x64"
      sha256 "a74543ffac19b45761faa58e86ecc6781d76903c253a4bc82cffd828bf7f6003"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.57/cli-linux-arm64"
      sha256 "03ee6b69f84143e8251efc4221c5c9bfa9ecd24c9a3472156d0340d99cf392f5"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.57/cli-linux-x64"
      sha256 "d12b53ad886d5375a472b609e70cdf647b3a064901fa50e00c762c5181d2e2c1"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end