# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.121"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.121/cli-osx-arm64"
      sha256 "f99b6eaeae747d0a67e44e0da7dd33d00538314446529856e99792370fde606b"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.121/cli-osx-x64"
      sha256 "0697dcb12c974073451ebdf943c664d1f336b95f4992acf5e5ab2fe30516f86d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.121/cli-linux-arm64"
      sha256 "be056ede91a1ca1f32eef32236817dbdbae08ae549cfb785e56cefafbf4f9206"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.121/cli-linux-x64"
      sha256 "6edea1c1d8bfe8e3221154d5a0b4655fdfff869feed0fc6e95b23ca5005d8b11"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end