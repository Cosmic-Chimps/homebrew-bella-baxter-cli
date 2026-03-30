# typed: false
# frozen_string_literal: true

# This formula is auto-updated by the CI pipeline after each release.
# Do not edit the version, url, or sha256 fields manually.

class Bella < Formula
  desc "Bella Baxter CLI — manage and consume secrets from Bella Baxter"
  homepage "https://bella-baxter.io"
  version "0.1.1-preview.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.32/cli-osx-arm64"
      sha256 "7cf19a2b1a7f9b5a9372134b30052d2989304d52ef9bb930479b7b46fae47765"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.32/cli-osx-x64"
      sha256 "9cc607f6e891d0ceee97d8c84882b4750df028e67eec8542179e3c45bfa4da5e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.32/cli-linux-arm64"
      sha256 "0a798d898c61bbe147f95de84a6c47be1e0d5851b4e0371eb3f47e7f705ab821"
    end

    on_intel do
      url "https://github.com/cosmic-chimps/bella-baxter-cli/releases/download/v0.1.1-preview.32/cli-linux-x64"
      sha256 "a74d371112ca62923e3ca91ed45bb54b7aa415102d135696e4540192692e250a"
    end
  end

  def install
    bin.install Dir["cli-*"].first => "bella"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bella --version")
  end
end